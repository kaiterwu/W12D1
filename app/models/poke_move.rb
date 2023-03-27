# == Schema Information
#
# Table name: poke_moves
#
#  id         :bigint           not null, primary key
#  pokemon_id :bigint           not null
#  move_id    :bigint           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class PokeMove < ApplicationRecord
    validates  :pokemon_id, :move_id, presence: true 
    validates :move_id, uniqueness: {scope: :pokemon_id,
    message: "Pokemon must have unique moves "}

    belongs_to :pokemon,
    class_name: :Pokemon,
    foreign_key: :pokemon_id

    belongs_to :move,
    class_name: :Move,
    foreign_key: :move_id
end
