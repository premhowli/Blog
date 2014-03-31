class HomesController < ApplicationController
  def index
@data=Home.all
  end
  

  def second_page
     @home = Home.new
  end
  def create
    home = Home.create(home_params)

    flash[:notice]="record saved"
    redirect_to action: :index, notice: 'Record saved'
  end 
def edit
@data= Home.find(params[:id])
end
  def update
@data=Home.find(params[:id])
@data.update(home_params)
flash[:notice]= "Record saved"
redirect_to action: :index
#end

end
  def home_params
    params.require(:home).permit(:name,:email)
  end
def destroy
@data=Home.find(params[:id])
@data.destroy
flash[:notice]= "Record deleted"
redirect_to action: :index

end


end

