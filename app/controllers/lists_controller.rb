class ListsController < ApplicationController
  # user can see all the lists
  def index
    @list = List.all
  end
  # user can see the details of a given list and its name
  def show
    @list = List.find(params[:id])
  end
  # user can see the details of a given list and its name
  def new
    @list = List.new
  end
  # user can create a new list
  def create
    @list = List.new(list_params)
    @list.save
  end

  private

  def list_params
    params.require(:list).permit(:name)
  end
end
