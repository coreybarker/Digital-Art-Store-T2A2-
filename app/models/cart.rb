class Cart < ApplicationRecord
    has_many :line_items, dependent: :destroy

 
# Calling to the line_items entity, via the line_item model to display
# the artwork data added by the end-user into the cart.
    def add_artwork(artwork)
        current_item = line_items.find_by(artwork_id: artwork.id)
        if current_item
            current_item.increment(:quantity)
        else
            current_item = line_items.build(artwork_id: artwork.id)
        end
        current_item
    end

    def total_price
        line_items.to_a.sum { |item| item.total_price }
    end
end
