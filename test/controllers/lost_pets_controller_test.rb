require "test_helper"

class LostPetsControllerTest < ActionDispatch::IntegrationTest
  test "should get Adoptions" do
    get lost_pets_Adoptions_url
    assert_response :success
  end

  test "should get Users" do
    get lost_pets_Users_url
    assert_response :success
  end

  test "should get Breeds" do
    get lost_pets_Breeds_url
    assert_response :success
  end

  test "should get Species" do
    get lost_pets_Species_url
    assert_response :success
  end
end
