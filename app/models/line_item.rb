class LineItem < ApplicationRecord
    belongs_to :artwork
    belongs_to :cart 

    # Calls to the artwork entity via the artwork model to get the price of each artwork added.
    def total_price
        artwork.price.to_i * quantity.to_i 
    end
end
