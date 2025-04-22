class PlayerCharactersController < ApplicationController
  def index
    
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
end