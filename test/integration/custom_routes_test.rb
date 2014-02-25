require 'test_helper'

class CustomRoutesTest < ActionDispatch::IntegrationTest
  test "/login debe ser una ruta valida" do
    get "/login"
    assert_response :success
  end

  test "/logout debe ser una ruta valida" do
    get "/logout"
    assert_response :redirect
    assert_redirected_to "/"
  end

  test "/register debe ser una ruta valida" do
    get "/register"
    assert_response :success
  end
end