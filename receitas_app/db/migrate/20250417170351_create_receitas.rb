class CreateReceitas < ActiveRecord::Migration[8.0]
  def change
    create_table :receitas do |t|
      t.string :nome
      t.text :ingredientes
      t.text :modo_de_preparo

      t.timestamps
    end
  end
end
