class TweetsController < ApplicationController
    def show
        @tweet = Tweet.find(params[:id])
    end
      
    def index
        @tweets = Tweet.all.order(created_at: :desc)
    end

    def create
        @tweet = Tweet.new(params.require(:tweet).permit(:content, :monster_id))
        if @tweet.save
            redirect_to @tweet, notice: "Tweet creado exitosamente"
        else
            render :new
        end
    end
end
