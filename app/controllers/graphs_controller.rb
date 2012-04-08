class GraphsController < ApplicationController
  before_filter :user_selected

  def index
    respond_to do |format|
      format.html # index.html.slim
    end
  end
end
