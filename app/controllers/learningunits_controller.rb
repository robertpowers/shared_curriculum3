class LearningunitsController < ApplicationController
  def index
    @learningunits = Learningunit.all
  end

  def show
    @learningunit = Learningunit.find(params[:id])
    @uniqueresource = Uniqueresource.new
  end

  def new
    @learningunit = Learningunit.new
  end

  def create
    @learningunit = Learningunit.new
    @learningunit.theme_id = params[:theme_id]
    @learningunit.network_id = params[:network_id]

    if @learningunit.save
      #redirect_to "/learningunits", :notice => "Learningunit created successfully."
      redirect_to :back, :notice => "Learning Unit Added Successfully."
    else
      render 'new'
    end
  end

  def edit
    @learningunit = Learningunit.find(params[:id])
  end

  def update
    @learningunit = Learningunit.find(params[:id])

    @learningunit.theme_id = params[:theme_id]
    @learningunit.network_id = params[:network_id]

    if @learningunit.save
      redirect_to "/learningunits", :notice => "Learningunit updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @learningunit = Learningunit.find(params[:id])

    @learningunit.destroy

    redirect_to :back, :notice => "Learning Unit Deleted Successfully."
  end
end
