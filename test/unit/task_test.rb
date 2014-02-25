require 'test_helper'

class TaskTest < ActiveSupport::TestCase

 test "La tarea debe tener un nombre" do
    task = Task.new
    assert !task.save, "La tarea se guardo sin un nombre"
  end

  test "el nombre de la tarea debe tener minimo 6 caracteres" do
    task = Task.new
    task.name = "Tare"
    assert !task.save, "La tarea se guardo con menos de 6 caracteres"
  end

  test "el nombre de la tarea debe ser unico" do
    task = Task.new
    task.name = "Tare"
    assert !task.save, "La tarea se guardo con un nombre repetido"
  end

end
