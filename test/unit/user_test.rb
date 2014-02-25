require 'test_helper'

class UserTest < ActiveSupport::TestCase

  test "el email del usuario debe ser unico" do
    user = User.new
    user.email = "ijsantodomingo@hotmail.com"
    assert !user.save, "El usuario se creo con un email repetido"
  end


  test "El usuario debe tener name, lastname, email" do
    user = User.new
    assert !user.save, "El usuario se creo sin name, lastname, email"
  end

end
