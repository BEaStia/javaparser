require 'mongoid'

class Car
  include Mongoid::Document
  include Mongoid::Attributes::Dynamic
  field :aid, :default => ""
  field :city, :default => ""
  belongs_to :car_maker
  belongs_to :car_model
  field :price
  field :year
  field :description
end
