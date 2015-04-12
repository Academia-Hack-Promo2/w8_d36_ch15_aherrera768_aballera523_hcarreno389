class Personaje < ActiveRecord::Base
  belongs_to :arma
  belongs_to :armadura
end
