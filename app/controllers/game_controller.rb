class GameController < ApplicationController
  def rps
    @user_move = params[:the_move]

    if @user_move == "rock"
    @user_move = 1
    elsif @user_move == "paper"
     @user_move = 2
    elsif @user_move == "scissors"
    @user_move = 3
    end




    # ===============================================================
    # Your code goes below.
    # The move the user chose is in the variable @user_move.
    # ===============================================================

    # Your logic here

    # In the end, make sure you assign the correct values to the
    #   following two variables:

    @ai_move = rand(2..4)

    if @user_move == @ai_move
      @result =  "You tie"
    elsif @user_move == @ai_move + 1
      @result =  "You WIN!"
    elsif @user_move == @ai_move - 2
      @result =  "You WIN!"
    elsif @user_move == @ai_move - 1
      @result =  "You LOSE :("
    elsif @user_move == @ai_move + 2
      @result =  "You LOSE :("
    else
      @result =  "sheiss"
    end


    # ===============================================================
    # Your code goes above.
    # ===============================================================

    render("rps.html.erb")
  end
end
