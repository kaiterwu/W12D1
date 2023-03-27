# == Schema Information
#
# Table name: moves
#
#  id         :bigint           not null, primary key
#  name       :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Move < ApplicationRecord
    validates :name, presence: true 
    validates :name, uniqueness: { message: "'%{value}' is already in use"}

    has_many :poke_moves,
    foreign_key: :move_id,
    class_name: :PokeMove,
    dependent: :destroy


end
