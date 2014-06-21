require 'test_helper'

class AcqereurrecherchesControllerTest < ActionController::TestCase
  setup do
    @acqereurrecherch = acqereurrecherches(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:acqereurrecherches)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create acqereurrecherch" do
    assert_difference('Acqereurrecherche.count') do
      post :create, acqereurrecherch: { acquereur_id: @acqereurrecherch.acquereur_id, chambre: @acqereurrecherch.chambre, type_de_bien: @acqereurrecherch.type_de_bien }
    end

    assert_redirected_to acqereurrecherch_path(assigns(:acqereurrecherch))
  end

  test "should show acqereurrecherch" do
    get :show, id: @acqereurrecherch
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @acqereurrecherch
    assert_response :success
  end

  test "should update acqereurrecherch" do
    patch :update, id: @acqereurrecherch, acqereurrecherch: { acquereur_id: @acqereurrecherch.acquereur_id, chambre: @acqereurrecherch.chambre, type_de_bien: @acqereurrecherch.type_de_bien }
    assert_redirected_to acqereurrecherch_path(assigns(:acqereurrecherch))
  end

  test "should destroy acqereurrecherch" do
    assert_difference('Acqereurrecherche.count', -1) do
      delete :destroy, id: @acqereurrecherch
    end

    assert_redirected_to acqereurrecherches_path
  end
end
