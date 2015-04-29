require 'test_helper'

class CarsControllerTest < ActionController::TestCase
  setup do
    directory = File.join(Rails.root, "app/assets/images/")
    @featured = File.open(File.join(directory, '98_buick1.jpg'))
    @image_one = File.open(File.join(directory, '98_buick2.jpg'))
    @image_two = File.open(File.join(directory, '98_buick_lesabre.jpeg'))
    @car = cars(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cars)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create car" do
    assert_difference('Car.count') do
      post :create, car: { description: @car.description, make: @car.make,
                           model: @car.model, price: @car.price, year: @car.year,
                           image:[@image_one, @image_two], featured_image: @featured}
    end
    @test_car = Car.create(description: @car.description, make: @car.make,
                         model: @car.model, price: @car.price, year: @car.year,
                         image:[@image_one, @image_two], featured_image: @featured)
    assert_redirected_to car_path(assigns(:car))
    assert_not_nil(@test_car.featured_image)
    assert_not_nil(@test_car.image)
  end

  test "should show car" do
    get :show, id: @car
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @car
    assert_response :success
  end

  test "should update car" do
    patch :update, id: @car, car: { description: @car.description, make: @car.make, model: @car.model, price: @car.price, year: @car.year }
    assert_redirected_to car_path(assigns(:car))
  end

  test "should destroy car" do
    assert_difference('Car.count', -1) do
      delete :destroy, id: @car
    end

    assert_redirected_to cars_path
  end
end
