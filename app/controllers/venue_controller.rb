class VenueController < ApplicationController
  def index
    # Do I need to speak to the database?
    # Do I need to pass any information to the views? (as instance variables)
    @all_venues = Venue.all
    # irb
  end

  def show
    @venue = Venue.find_by(id: params['id'])
    @all_venues = Venue.all
  end

  def destroy
    venue = Venue.find_by(id: params["id"])
    venue.destroy
    redirect_to "/venues"
  end
end
