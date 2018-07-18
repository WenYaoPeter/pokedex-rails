class PokemonsController < ApplicationController
   def index
      @pokemons = Pokemon.all
   end
 
   def show
      @pokemons = Pokemon.find(params[:id])
   end
 
   def new
   end

   def create
      puts params
      @pokemons = Pokemon.new(pokemons_params)
      @pokemons.save
      redirect_to @pokemons
   end
 
   def edit
   end

   def update
   end
 
   def destroy
   end

   private

   def pokemons_params
     params.require(:pokemons).permit(:id, :num, :name, :img, :height, :weight, :candy, :candy_count, :egg, :avg_spawns, :spawn_time)
   end
end
