class StatsController < ApplicationController
  subtabs :resque, :redis, :keys
  
  def index
    redirect_to :action => 'resque'
  end

  def keys
    if params[:id]
      render 'key'
    else
      render 'keys'
    end
  end
end
