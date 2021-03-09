require 'test_helper'

class FibosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @fibo = fibos(:one)
  end

  test "should get index" do
    get fibos_url, as: :json
    assert_response :success
  end

  test "should create fibo" do
    assert_difference('Fibo.count') do
      post fibos_url, params: { fibo: { number: @fibo.number } }, as: :json
    end

    assert_response 201
  end

  test "should show fibo" do
    get fibo_url(@fibo), as: :json
    assert_response :success
  end

  test "should update fibo" do
    patch fibo_url(@fibo), params: { fibo: { number: @fibo.number } }, as: :json
    assert_response 200
  end

  test "should destroy fibo" do
    assert_difference('Fibo.count', -1) do
      delete fibo_url(@fibo), as: :json
    end

    assert_response 204
  end
end
