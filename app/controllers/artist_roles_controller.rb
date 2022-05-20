class ArtistRolesController < ApplicationController

    def create
        current_user.add_role :artist
        redirect_to root_path, notice: "You're now an artist! Try the 'Sell Artwork' feature above!"
    end

end