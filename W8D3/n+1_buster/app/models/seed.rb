# == Schema Information
#
# Table name: seeds
#
#  id         :bigint           not null, primary key
#  count      :integer          not null
#  plant_id   :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Seed < ApplicationRecord
  belongs_to :plant,
    class_name: 'Plant',
    foreign_key: :plant_id,
    primary_key: :id
  
  belongs_to :gardener,
    through: :plant,
    source: :gardener

  belongs_to :house,
    through: :gardener,
    source: :house
end
