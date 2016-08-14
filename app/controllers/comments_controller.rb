class CommentsController < ApplicationController
  before_action :set_category, only: [:show, :create, :edit, :destroy, :update]
  def new
        @comments=Comment.new
  end

  def index
        @comments=Comment.all
  end

  def show
  end

  def create
        
  end

  def edit
       
  end

  def destroy
       
  end

  def update
  end
   
private
  def set_category
    @comments=Comment.find(params[:id])
  end

end
