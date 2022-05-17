class LineItem < ApplicationRecord
    belongs_to :artwork
    belongs_to :cart 

    def total_price
        artwork.price.to_i * quantity.to_i 
    end
end
