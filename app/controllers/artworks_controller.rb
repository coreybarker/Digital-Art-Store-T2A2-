class ArtworksController < ApplicationController
    before_action :authenticate_user!, except: %i[index]
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

    def edit; end

    def update
        @artwork.update(artwork_params)
        redirect_to @artwork
    end

    def destroy
        @artwork.destroy
        redirect_to artworks_path
    end

  private

    def find_artwork
        @artwork = Artwork.find(params[:id])
    end

    def artwork_params
        return params.require(:artwork).permit(:title, :artist, :description, :price, :artwork_image)
    end
end
