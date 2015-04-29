class StoreController < ApplicationController
  def index
    @cars = Car.where(featured: true)
  end
  def inventory
    @cars = Car.all
  end
end
