require 'test_helper'

class TasksControllerTest < ActionController::TestCase
  setup do
    @task = tasks(:one)
  end


  test "debe ir a la autenticacion si no esta logeado" do
    get :new
    assert_response :redirect
    assert_redirected_to new_user_session_path
  end

  test "should get edit" do
    get :edit, id: @task
    assert_response :success
  end

  test "should update task" do
    put :update, id: @task, task: { name: @task.name, status: @task.status }
    assert_redirected_to task_path(assigns(:task))
  end

  test "should destroy task" do
    assert_difference('Task.count', -1) do
      delete :destroy, id: @task
    end

    assert_redirected_to tasks_path
  end

end
