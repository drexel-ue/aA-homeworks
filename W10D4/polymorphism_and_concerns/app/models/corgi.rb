require_relative 'concerns/toyable'

class Corgi < ApplicationRecord
    include Toyable
end
