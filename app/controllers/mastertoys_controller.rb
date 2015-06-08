class MastertoysController < ApplicationController
  def index
    @mastertoys = Mastertoy.all
  end

  def show
    @mastertoy = Mastertoy.find(params[:id])
  end

  def new
    @mastertoy = Mastertoy.new
  end

  def create
    @mastertoy = Mastertoy.new
    @mastertoy.price = params[:price]
    @mastertoy.thumbnailurl = params[:thumbnailurl]
    @mastertoy.name = params[:name]

    if @mastertoy.save
      redirect_to "/mastertoys", :notice => "Mastertoy created successfully."
    else
      render 'new'
    end
  end

  def edit
    @mastertoy = Mastertoy.find(params[:id])
  end

  def update
    @mastertoy = Mastertoy.find(params[:id])

    @mastertoy.price = params[:price]
    @mastertoy.thumbnailurl = params[:thumbnailurl]
    @mastertoy.name = params[:name]

    if @mastertoy.save
      redirect_to "/mastertoys", :notice => "Mastertoy updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @mastertoy = Mastertoy.find(params[:id])

    @mastertoy.destroy

    redirect_to "/mastertoys", :notice => "Mastertoy deleted."
  end
end
