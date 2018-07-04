class TrainersController < ApplicationController

def new
	@trainer = Trainer.new
end

def create
	@trainer = Trainer.new(trainers_params)
	if @trainer.save
		redirect_to root_path
	else
		render 'new'
	end
end

def edit 
	@trainer =  Trainer.find(params[:id])
end

def update
	@trainer= Trainer.find(params[:id])
    if@trainer.update(trainers_params)
       redirect_to root_path
         else render "edit"
    end
end

private
def trainers_params
	params.require(:trainer).permit(
		:image,
		:first_name,
		:last_name,
		:email,
		:phone_number,
		:password,
		:skills,
		:prior_experience,
		:birthday,
		:start_date,
		:rate_per_day
		 )
end
end