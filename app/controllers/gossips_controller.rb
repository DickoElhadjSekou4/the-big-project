class GossipsController < ApplicationController
  def index
    @gossips = Gossip.all
  end

  def show
    @gossip = Gossip.find(params[:id])
  end

  def new
    @gossip = Gossip.new
  end

  def create
    @gossip = Gossip.new(
      title: params[:title],
      content: params[:content],
      author_id: User.find_by(first_name: "Anonymous").id
    )

    if @gossip.save
      flash[:success] = "Le potin a ete cree avec succes !"
      redirect_to root_path
    else
      flash[:error] = "Erreur : verifie les champs du formulaire !"
      render :new, status: :unprocessable_entity
    end
  end
end