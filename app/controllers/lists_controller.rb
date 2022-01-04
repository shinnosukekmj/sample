class ListsController < ApplicationController
  def new
    @list=List.new
  end
  
  def create
    @list=List.new(list_params)
      if @list.save
        flash[:notice]="success"
        redirect_to list_path
      else
        render :new
      end
  end

  def index
    @lists=List.all
  end

  def show
    @list=List.find(params[:id])
  end

  def edit
    @list=List.find(params[:id])
  end
  
  def update
    @list=List.find(params[:id])
      if @list.update(list_params)
        flash[:notice]="success"
        redirect_to list_path
      else
        render :edit
      end
  end
  
  def destroy
    list=List.find(params[:id])
    list.destroy
    redirect_to list_path
  end
  
  private
  def list_params
    params.require(:list).permit(:title,:body,:image)
  end
end
