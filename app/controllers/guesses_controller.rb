class GuessesController < ApplicationController
    def index
    end

    def create
        @guess = Guess.create(guess_params)
        redirect_to guess_path(@guess)
    end

    def new
        @guess = Guess.new
    end
    

    def show
    end
    

    private

    def guess_params
        params.require(:guess).permit(
            :name,
            :answer
        )
    end
    
end

