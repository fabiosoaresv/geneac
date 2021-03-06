# frozen_string_literal: true

# Model that holds information about a specific 'factable' record
# Factable objects: Person
class Fact < ApplicationRecord
  include ParseableDate

  belongs_to :factable, polymorphic: true, optional: true
  validates :fact_type, presence: true

  has_many :citations, as: :citable, dependent: :destroy
  accepts_nested_attributes_for :citations

  acts_as_taggable_on :tags, :tagged_people

  before_save :update_normalized_type

  def date
    parse(date_string)
  end

  # Updates the 'normalized' fact type so a fact can be mapped to
  # something like a birthday even if the fact type is different.
  # ('birth' vs 'birthdate' etc)
  def update_normalized_type
    self.normalized_type = fact_type.downcase.strip
    self.normalized_type = 'birth' if normalized_type.starts_with? 'birth'
  end
end
