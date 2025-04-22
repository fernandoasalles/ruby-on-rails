class CreateReceita < ActiveRecord::Migration[8.0]
  def change
    create_table :receita do |t|
      t.string :nome
      t.text :ingredientes
      t.text :modo_de_preparo

      t.timestamps
    end
  end
end
