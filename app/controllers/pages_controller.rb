class PagesController < HighVoltage::PagesController
  def index
    @cars = Car.all
  end
  def show
    @cars = Car.all
  end
end
