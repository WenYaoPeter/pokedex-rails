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
      @pokemons = Pokemon.new(pokemons_params)
      @pokemons.save
      redirect_to "/"
   end
 
   def edit
      @pokemons = Pokemon.find(params[:id])

   end

   def update
      @pokemons = Pokemon.find(params[:id])
      @pokemons.update(pokemons_params)
      
      redirect_to @pokemons
   end
 
   def destroy
    @pokemons = Pokemon.find(params[:id])
    @pokemons.delete

    redirect_to pokemons_path
   end

   private

   def pokemons_params
     params.require(:pokemon).permit(:id, :num, :name, :img, :height, :weight, :candy, :candy_count, :egg, :avg_spawns, :spawn_time)
   end
end
