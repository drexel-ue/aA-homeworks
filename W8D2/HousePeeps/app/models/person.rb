# == Schema Information
#
# Table name: people
#
#  id       :bigint           not null, primary key
#  name     :string           not null
#  house_id :integer
#

class Person < ApplicationRecord

    validates :name, presence: true
    validate :check_name_length

    def check_name_length
        unless self.name.length >= 3
            errors[:name] << 'is too short, must be at least three characters'
        end
    end

    belongs_to :house,
        primary_key: :id,
        foreign_key: :house_id,
        class_name: :House

end
