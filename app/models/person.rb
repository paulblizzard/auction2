class Person < ActiveRecord::Base
  attr_accessible :email, :first_name, :last_name, :phone_number
  
  validates_presence_of :first_name, :on => :create, :message => "can't be blank"
  validates_presence_of :last_name, :on => :create, :message => "can't be blank"
  validates_presence_of :email, :on => :create, :message => "can't be blank"
  validates_presence_of :phone_number, :on => :create, :message => "can't be blank"
  
  validates_uniqueness_of :email, :on => :create, :message => "must be unique"
end
