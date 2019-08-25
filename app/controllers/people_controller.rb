# frozen_string_literal: true

# Controller for displaying people (editing controlled by Administrate)
class PeopleController < ApplicationController
  def show
    @person = Person.find(params[:id])
    authorize @person

    @children = @person.children.map do |p|
      authorize p
      p
    end

    @siblings = @person.siblings.map do |p|
      authorize p
      p
    end

    @events = events_service.events
    @notes = Note.tagged_with(@person.id.to_s)
    @photos = Photo.tagged_with(@person.id.to_s)
  end

  private

  def events_service
    Events::EventsService.new(id: @person.id)
  end
end
