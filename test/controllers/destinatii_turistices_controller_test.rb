require 'test_helper'

class DestinatiiTuristicesControllerTest < ActionController::TestCase
  setup do
    @destinatii_turistice = destinatii_turistices(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:destinatii_turistices)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create destinatii_turistice" do
    assert_difference('DestinatiiTuristice.count') do
      post :create, destinatii_turistice: { descriete: @destinatii_turistice.descriete, obiectiv: @destinatii_turistice.obiectiv, oras: @destinatii_turistice.oras }
    end

    assert_redirected_to destinatii_turistice_path(assigns(:destinatii_turistice))
  end

  test "should show destinatii_turistice" do
    get :show, id: @destinatii_turistice
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @destinatii_turistice
    assert_response :success
  end

  test "should update destinatii_turistice" do
    patch :update, id: @destinatii_turistice, destinatii_turistice: { descriete: @destinatii_turistice.descriete, obiectiv: @destinatii_turistice.obiectiv, oras: @destinatii_turistice.oras }
    assert_redirected_to destinatii_turistice_path(assigns(:destinatii_turistice))
  end

  test "should destroy destinatii_turistice" do
    assert_difference('DestinatiiTuristice.count', -1) do
      delete :destroy, id: @destinatii_turistice
    end

    assert_redirected_to destinatii_turistices_path
  end
end
