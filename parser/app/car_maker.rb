require 'mongoid'

class CarMaker
  include Mongoid::Document
  include Mongoid::Attributes::Dynamic
  field :name, type: String, :default => ""
  field :names, type: Hash, :default => {}
  field :foreign, type: Boolean, :default => true
  has_many :car_models
  has_many :cars
end
