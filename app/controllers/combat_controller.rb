class CombatController < ApplicationController
  def index
    
  end

  def new
    @player_characters = PlayerCharacter.all
  end

  def create
    combat = Combat.new
    combat.save
     players = params.select {|k,v| v == "1"}.keys
     players.each do |player_id|
      pc = PlayerCharactersCombat.new({
        combat_id: combat.id,
        player_character_id: player_id
      })
      pc.save
     end
     redirect_to "/combat/#{combat.id}"
  end

  def show
    @combat = Combat.find(params[:id])
    @pcc = PlayerCharactersCombat.where(combat_id: params[:id])
    player_ids = @pcc.map {|pcc| pcc.player_character_id}
    @players = PlayerCharacter.where(id: player_ids)
  end

end