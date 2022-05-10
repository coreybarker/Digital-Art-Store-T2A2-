class ArtworksController < ApplicationController
    before_action :find_artwork, only: %i[show edit update destroy]

    def index
        @artworks = Artwork.order(:created_at)
    end

    def show; end

    def create
    end

  private

    def find_artwork
        @artwork = Artwork.find(params[:id])
    end
end
