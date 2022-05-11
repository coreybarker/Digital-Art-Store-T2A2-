class ArtworksController < ApplicationController
    before_action :find_artwork, only: %i[show edit update destroy]

    def index
        @artworks = Artwork.order(:created_at)
    end

    def show; end

    def new
        @artwork = Artwork.new
    end

    def create
        artwork = Artwork.create(artwork_params)
        redirect_to artwork
    end

  private

    def find_artwork
        @artwork = Artwork.find(params[:id])
    end

    def artwork_params
        return params.require(:artwork).permit(:title, :artist, :description, :price)
    end
end
