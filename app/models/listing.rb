require 'data_mapper'
require 'dm-postgres-adapter'

class Listing

  include DataMapper::Resource

  property :id, Serial
  property :name, Text
  property :description, Text
  property :price, Numeric
  property :date, Text

  belongs_to :user
  has n, :booking
  has n, :days, through: Resource

  def self.find_listing(booking_listing_id)
    Listing.get(booking_listing_id)
  end

  def self.add_availability(listing_id)
    
  end
end
