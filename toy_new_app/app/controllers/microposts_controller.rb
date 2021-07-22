class MicropostsController < ApplicationController
	def index
		@microposts = Micropost.all
	end

	def show
		@micropost = Micropost.find(params[:id])
	end

	def new
		@micropost = Micropost.new
	end

	def create
		@micropost = Micropost.new(micropost_params)

		if @micropost.save
			redirect_to @micropost
		else
			render :new
		end
	end

	def edit
		@micropost = Micropost.find(params[:id])
	end

	def update
		@micropost = Micropost.find(params[:id])

		if @micropost.update(micropost_params)
			redirect_to @micropost
			else
				render :edit
		end
	end

	def destroy
		@micropost = Micropost.find(params[:id])
		@micropost.destroy

		redirect_to microposts_path
	end

	private
		def micropost_params
			params.require(:micropost).permit(:context, :user_id)
		end

end
