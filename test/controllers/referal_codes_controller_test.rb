require 'test_helper'

class ReferalCodesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @referal_code = referal_codes(:one)
  end

  test "should get index" do
    get referal_codes_url, as: :json
    assert_response :success
  end

  test "should create referal_code" do
    assert_difference('ReferalCode.count') do
      post referal_codes_url, params: { referal_code: { expire_at: @referal_code.expire_at, memeber_id: @referal_code.memeber_id, referal_code: @referal_code.referal_code, used: @referal_code.used } }, as: :json
    end

    assert_response 201
  end

  test "should show referal_code" do
    get referal_code_url(@referal_code), as: :json
    assert_response :success
  end

  test "should update referal_code" do
    patch referal_code_url(@referal_code), params: { referal_code: { expire_at: @referal_code.expire_at, memeber_id: @referal_code.memeber_id, referal_code: @referal_code.referal_code, used: @referal_code.used } }, as: :json
    assert_response 200
  end

  test "should destroy referal_code" do
    assert_difference('ReferalCode.count', -1) do
      delete referal_code_url(@referal_code), as: :json
    end

    assert_response 204
  end
end
