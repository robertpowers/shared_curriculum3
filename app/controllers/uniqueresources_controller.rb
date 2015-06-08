class UniqueresourcesController < ApplicationController
  def index
    @uniqueresources = Uniqueresource.all
  end

  def show
    @uniqueresource = Uniqueresource.find(params[:id])
  end

  def new
    @uniqueresource = Uniqueresource.new
  end

  def create
    @uniqueresource = Uniqueresource.new
    @uniqueresource.broken = params[:broken]
    @uniqueresource.lost = params[:lost]
    @uniqueresource.rating = params[:rating]
    @uniqueresource.learningunit_id = params[:learningunit_id]
    @uniqueresource.mastertoy_id = params[:mastertoy_id]

    if @uniqueresource.save
      #redirect_to "/uniqueresources", :notice => "Uniqueresource created successfully."
      redirect_to :back, :notice => "New Resource Added Successfully."
    else
      render 'new'
    end
  end

  def edit
    @uniqueresource = Uniqueresource.find(params[:id])
  end

  def update
    @uniqueresource = Uniqueresource.find(params[:id])

    @uniqueresource.broken = params[:broken]
    @uniqueresource.lost = params[:lost]
    @uniqueresource.rating = params[:rating]
    @uniqueresource.learningunit_id = params[:learningunit_id]
    @uniqueresource.mastertoy_id = params[:mastertoy_id]

    if @uniqueresource.save
      redirect_to "/uniqueresources", :notice => "Uniqueresource updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @uniqueresource = Uniqueresource.find(params[:id])

    @uniqueresource.destroy

    redirect_to "/uniqueresources", :notice => "Uniqueresource deleted."
  end
end
