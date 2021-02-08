require "test_helper"

class MunicipesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @municipe = municipes(:one)
  end

  test "should get index" do
    get municipes_url, as: :json
    assert_response :success
  end

  test "should create municipe" do
    assert_difference('Municipe.count') do
      post municipes_url, params: { municipe: { cpf: @municipe.cpf, data_nascimento: @municipe.data_nascimento, email: @municipe.email, foto: @municipe.foto, nome_completo: @municipe.nome_completo, status: @municipe.status, telefone: @municipe.telefone } }, as: :json
    end

    assert_response 201
  end

  test "should show municipe" do
    get municipe_url(@municipe), as: :json
    assert_response :success
  end

  test "should update municipe" do
    patch municipe_url(@municipe), params: { municipe: { cpf: @municipe.cpf, data_nascimento: @municipe.data_nascimento, email: @municipe.email, foto: @municipe.foto, nome_completo: @municipe.nome_completo, status: @municipe.status, telefone: @municipe.telefone } }, as: :json
    assert_response 200
  end

  test "should destroy municipe" do
    assert_difference('Municipe.count', -1) do
      delete municipe_url(@municipe), as: :json
    end

    assert_response 204
  end
end
