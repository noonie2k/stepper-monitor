class GraphsController < ApplicationController
  before_filter :user_selected

  def index
    @series = Array.new
    @series << {
      name: current_user.name,
      data: current_user.steps.collect { |s| [s.date.to_time.to_i*1000, s.steps] }.to_json
    }

    respond_to do |format|
      format.html { render 'index', locals: { series: @series } }
    end
  end
end
