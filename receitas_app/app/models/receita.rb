class Receita < ApplicationRecord
  validates :nome, presence: true
  validates :categoria, presence: true
  validates :ingredientes, presence: true
  validates :modo_de_preparo, presence: true
end
