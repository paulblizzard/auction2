class Item < ActiveRecord::Base
  attr_accessible :description, :donor_id, :minimum_bid, :name, :winning_bid, :winning_bidder_id
  validates_presence_of :name, :on => :create, :message => "can't be blank"
  validates_presence_of :minimum_bid, :on => :create, :message => "can't be blank"
end
