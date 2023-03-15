class Plant < ApplicationRecord
    def initialize(attributes={})
    super
    @price = attributes[:price].to_f
  end
end
