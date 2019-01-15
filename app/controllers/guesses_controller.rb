class GuessesController < ApplicationController
    def index
    end

    def create
        @guess = Guess.create(guess_params)
        session[:guess] = @guess.answer
        redirect_to guess_path(@guess)

    end

    def new
        @guess = Guess.new
    end
    

    def show
        if session[:guess] == "Boy"
            @answer = "Correct"
        else
            @answer = "You're wrong"
        end
    end
    

    private

    def guess_params
        params.require(:guess).permit(
            :name,
            :answer
        )
    end
    
end

