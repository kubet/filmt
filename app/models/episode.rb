class Episode < ApplicationRecord
    belongs_to :serie, optional: true
end
