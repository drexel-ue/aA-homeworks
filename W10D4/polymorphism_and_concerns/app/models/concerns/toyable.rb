module Toyable
    extend ActiveSupport::Concern

    included do
        has_many :toys, as: :toyable
    end

    def receive_toy(toy_name)
        toy = Toy.find_or_create_by(name: toy_name, toyable_id: self.id, toyable_type: self.class.to_s)
    end
end