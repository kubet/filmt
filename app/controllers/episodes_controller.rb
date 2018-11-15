class EpisodesController < ApplicationController
  before_action :set_serie
  before_action :set_episode, except: [:create]
  def index
    @episodes = Episode.all
  end
  def show
    @episode = Episode.find(params[:id])
  end
  def set_episode
    @episode = Review.find(params[:id])
  end

  def set_serie
    @serie = Serie.find(params[:serie_id])
  end
end
