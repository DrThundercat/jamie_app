class UsersController < ApplicationController
  
  layout :resolve_layout
  
  def index 
  end
  
  def new
    @user = User.new
  end
  
  def show 
    @user = User.all
  end 
  
  def create 
    @user = User.new(usr_params)
    
    if @user.save 
      redirect_to :action => 'show'
    else 
      render :action => 'new'
    end
  end
  
  def edit
  end
  
  def update
  end
  
  def destroy
  end
  
  private 
  
    def find_usr 
    end 
  
    def usr_params
      params.require(:users).permit(:name, :email)
    end
    
    def resolve_layout
      case action_name 
      when "new"
        "sign_in"
      else 
        "application"
      end 
    end
end
