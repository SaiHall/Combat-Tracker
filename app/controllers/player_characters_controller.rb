class PlayerCharactersController < ApplicationController
  def index
    @player_characters = PlayerCharacter.all
  end

  def new
    
  end

  def create
    player_character = PlayerCharacter.new({
      name: params[:name],
      hp: params[:hp],
      ac: params[:ac],
      notes: params[:notes]
    })

    player_character.save

    redirect_to '/player_characters'    
  end

  def show
    @player_character = PlayerCharacter.find(params[:id])
  end
end