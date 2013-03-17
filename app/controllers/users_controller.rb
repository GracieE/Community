class UsersController < ApplicationController

respond_to :html, :xml, :json
	#display all the users in the users table
	def index
		 @users = User.all
		 respond_with(@users)
	end
	
	def show
	    @user = User.find(params[:id])
	    respond_with(@user)
  	end

   def edit
    @user = User.find(params[:id])
  end	
  def update
    @user = User.find(params[:id])
    #fix this!

    respond_to do |format|
      if @user.update_attributes(params[:user])
        format.html { redirect_to @user, notice: 'User was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end	
end