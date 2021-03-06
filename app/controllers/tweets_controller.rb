class TweetsController < ApplicationController
  before_action :move_to_index, except: [:index, :show]

  def index
    @tweets = Tweet.includes(:user).order("created_at DESC").page(params[:page]).per(5)
  end

  def new
    @tweet = Tweet.new
  end

  def create
    @tweet = Tweet.new(tweet_params)
  
    if @tweet.save
      redirect_to root_path
    else
      render new_tweet_path 
    end
    
  end

  def destroy
    tweet = Tweet.find(params[:id])
    tweet.destroy
  end

  def edit
    @tweet = Tweet.find(params[:id])
  end

  def update
    tweet = Tweet.find(params[:id])
    tweet.update(tweet_params)
  end

  def show
    @tweet = Tweet.find(params[:id])
    @comment = Comment.new
    @comments = @tweet.comments.includes(:user)
    @likes_count = Like.where(tweet_id: @tweet.id).count
  end

  private

  def tweet_params
    params.require(:tweet).permit(:image, :title, :text).merge(user_id: current_user.id)
  end

  def move_to_index
    redirect_to action: :index unless user_signed_in?
  end
end
