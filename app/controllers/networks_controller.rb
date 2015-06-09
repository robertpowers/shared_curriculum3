class NetworksController < ApplicationController
  def index
    @networks = current_user.networks
    #@networks = Network.all
  end

  def show
    @network = Network.find(params[:id])
    @learningunit = Learningunit.new
    @school = School.new
  end

  def new
    @network = Network.new
  end

  def create
    @network = Network.new
    @network.name = params[:name]
    @network.location = params[:location]
    @network.user_id = params[:user_id]

    if @network.save
      redirect_to "/networks", :notice => "Network created successfully."
    else
      render 'new'
    end
  end

  def edit
    @network = Network.find(params[:id])
  end

  def update
    @network = Network.find(params[:id])

    @network.name = params[:name]
    @network.location = params[:location]
    @network.user_id = params[:user_id]

    if @network.save
      redirect_to "/networks", :notice => "Network updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @network = Network.find(params[:id])

    @network.destroy

    redirect_to "/networks", :notice => "Network deleted."
  end
end
