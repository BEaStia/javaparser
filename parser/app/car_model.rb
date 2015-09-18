require 'mongoid'

class CarModel
  include Mongoid::Document
  include Mongoid::Attributes::Dynamic
  field :name, :default=>""
  field :names, :default => {}
  belongs_to :car_maker
  has_many :cars
end