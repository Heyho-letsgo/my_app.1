require 'test_helper'

class AcquereursControllerTest < ActionController::TestCase
  setup do
    @acquereur = acquereurs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:acquereurs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create acquereur" do
    assert_difference('Acquereur.count') do
      post :create, acquereur: { email: @acquereur.email, nom: @acquereur.nom, prenom: @acquereur.prenom, telephone: @acquereur.telephone }
    end

    assert_redirected_to acquereur_path(assigns(:acquereur))
  end

  test "should show acquereur" do
    get :show, id: @acquereur
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @acquereur
    assert_response :success
  end

  test "should update acquereur" do
    patch :update, id: @acquereur, acquereur: { email: @acquereur.email, nom: @acquereur.nom, prenom: @acquereur.prenom, telephone: @acquereur.telephone }
    assert_redirected_to acquereur_path(assigns(:acquereur))
  end

  test "should destroy acquereur" do
    assert_difference('Acquereur.count', -1) do
      delete :destroy, id: @acquereur
    end

    assert_redirected_to acquereurs_path
  end
end
