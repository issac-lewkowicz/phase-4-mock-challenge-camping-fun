class SignupsController < ApplicationController
    
  # def index

  # end

  def create
    signup = Signup.create!(signup_params)
    render json: signup.activity, status: :created
  end

  # def show

  # end

  # def update

  # end

  # def destroy

  # end
  
  private

  def signup_params
    params.permit(:time, :activity_id, :camper_id)
  end
end
