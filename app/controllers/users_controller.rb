class UsersController < ApplicationController
  skip_before_action :verify_authenticity_token  


  def index
  end

  def ajax_form
    @user = User.create(first_name: params[:first_name], last_name: params[:last_name], number: params[:number]) 
    respond_to :js
  end

  # def create_ajax_form_user 
  #   debugger
  #    @deep = "Hello Indore"
  #    @user = User.create(gender: params[:gender],first_name: params[:first_name], last_name: params[:last_name], mobile_no: params[:mobile_no]) 
  #    @user.images.attach(params[:images])
  #   respond_to :js
  # end 

end
