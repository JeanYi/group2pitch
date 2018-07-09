class TrainersController < ApplicationController

def index
  @trainers = Trainer.all
end

def show
  @trainer = Trainer.find(params[:id])
end

def new
	@trainer = Trainer.new
end

def create
	@trainer = Trainer.new(trainers_params)
	if @trainer.save
		session[:trainer_id] = @trainer.id
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
    if @trainer.update(trainers_params)
       redirect_to root_path
         else render "edit"
    end
end

def destroy
    @trainer = Trainer.find(params[:id])
      if @trainer.destroy
        redirect_to root_path
      else
        redirect_to edit_trainer_path
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