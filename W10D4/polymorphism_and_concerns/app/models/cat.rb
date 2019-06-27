require_relative 'concerns/toyable'

class Cat < ApplicationRecord
    include Toyable
end
