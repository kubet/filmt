class Film < ApplicationRecord
    def to_param
        "#{self.id}-#{self.title.parameterize}"
      end
end
