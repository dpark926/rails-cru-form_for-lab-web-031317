class ArtistsController < ApplicationController
  def index
    @artists = Artist.all
  end

  def show
    @artist = Artist.find(params[:id])
  end

  def new
		@artist = Artist.new
	end

	def create
	  @artist = Artist.create(artist_params)
    # @artist.save

    # OR?
    # @artist = Artist.create(params[:name], params[:bio])

	  # @artist.name = params[:artist][:name]
	  # @artist.bio = params[:artist][:bio]
    @artists = Artist.all
    redirect_to artists_path(@artists)
	end

  def edit
    @artist = Artist.find(params[:id])
  end

  def update
    @artist = Artist.find(params[:id])
    @artist.update(artist_params)
    redirect_to artist_path(@artist)
  end

  private

  def artist_params
    params.require(:artist).permit(:name, :bio)
  end
end
