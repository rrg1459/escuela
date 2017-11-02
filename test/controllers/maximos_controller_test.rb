require 'test_helper'

class MaximosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @maximo = maximos(:one)
  end

  test "should get index" do
    get maximos_url
    assert_response :success
  end

  test "should get new" do
    get new_maximo_url
    assert_response :success
  end

  test "should create maximo" do
    assert_difference('Maximo.count') do
      post maximos_url, params: { maximo: { juego: @maximo.juego, puntaje: @maximo.puntaje } }
    end

    assert_redirected_to maximo_url(Maximo.last)
  end

  test "should show maximo" do
    get maximo_url(@maximo)
    assert_response :success
  end

  test "should get edit" do
    get edit_maximo_url(@maximo)
    assert_response :success
  end

  test "should update maximo" do
    patch maximo_url(@maximo), params: { maximo: { juego: @maximo.juego, puntaje: @maximo.puntaje } }
    assert_redirected_to maximo_url(@maximo)
  end

  test "should destroy maximo" do
    assert_difference('Maximo.count', -1) do
      delete maximo_url(@maximo)
    end

    assert_redirected_to maximos_url
  end
end
