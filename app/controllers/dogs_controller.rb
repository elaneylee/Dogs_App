class DogsController < ApplicationController
	def index
		@dogs = Dog.all
	end
<<<<<<< HEAD

	def show
		@dog = Dog.find(params[:id])
	end

	def new
		@dog = Dog.new
	end

	def create
		@dog = Dog.new(dog_params)

		if @dog.save
			redirect_to dogs_path
		else
			render :new
		end
	end

	def edit
		@dog = Dog.find(params[:id])
	end

	def update
		@dog = Dog.find(params[:id])

		if @dog.update_attributes(dog_params)
			redirect_to dogs_path
		else
			render :edit
		end
	end

	def destroy
		@dog = Dog.find(params[:id])
		@dog.destroy
		redirect_to dogs_path
	end

	private

	def dog_params
		params.require(:dog).permit(:name, :age, :breed, :city, :pic)
	end
=======
>>>>>>> 81588a578eb2c2b93aa7c16766bd85373de85575
end