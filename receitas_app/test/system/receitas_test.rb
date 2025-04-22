require "application_system_test_case"

class ReceitasTest < ApplicationSystemTestCase
  setup do
    @receita = receitas(:one)
  end

  test "visiting the index" do
    visit receitas_url
    assert_selector "h1", text: "Receitas"
  end

  test "should create receita" do
    visit receitas_url
    click_on "New receita"

    fill_in "Nome", with: @receita.nome
    fill_in "Categoria", with: @receita.categoria
    fill_in "Ingredientes", with: @receita.ingredientes
    fill_in "Modo de preparo", with: @receita.modo_de_preparo
    click_on "Create Receita"

    assert_text "Receita criada com sucesso"
    click_on "Back"
  end

  test "should update Receita" do
    visit receita_url(@receita)
    click_on "Edit this receita", match: :first

    fill_in "Nome", with: @receita.nome
    fill_in "Categoria", with: @receita.categoria
    fill_in "Ingredientes", with: @receita.ingredientes
    fill_in "Modo de preparo", with: @receita.modo_de_preparo
    click_on "Update Receita"

    assert_text "Receita atualizada com sucesso"
    click_on "Back"
  end

  test "should destroy Receita" do
    visit receita_url(@receita)
    click_on "Destroy this receita", match: :first

    assert_text "Receita excluída com sucesso"
  end
end
