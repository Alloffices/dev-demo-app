class DevtoolsController < ApplicationController
	  before_action :find_devtool, only: [:show, :edit, :update, :destroy]
	  before_action :authenticate_user!, except: [:index, :show]

	def index
		@devtools = Devtool.all.order("created_at desc")
	end

	def show
	end

	def new
		@devtool = Devtool.new
	end

	def create
		@devtool = Devtool.new(devtool_params)

	    respond_to do |format|
	      if @devtool.save
	        format.html { redirect_to @devtool, notice: 'Dev resource was successfully created.' }
	        format.json { render :show, status: :created, location: @devtool }
	      else
	        format.html { render :new }
	        format.json { render json: @devtool.errors, status: :unprocessable_entity }
	      end
	    end
	end

	def edit
	end

	def update
	    respond_to do |format|
	      if @devtool.update(devtool_params)
	        format.html { redirect_to @devtool, notice: 'Dev resource was successfully updated.' }
	        format.json { render :show, status: :ok, location: @devtool }
	      else
	        format.html { render :edit }
	        format.json { render json: @devtool.errors, status: :unprocessable_entity }
	      end
	    end
	end

	def destroy
	    @devtool.destroy
	    respond_to do |format|
	      format.html { redirect_to devtools_url, notice: 'Dev resource was successfully destroyed.' }
	      format.json { head :no_content }
	    end
	end

	private

	def find_devtool
		@devtool = Devtool.find(params[:id])
	end

	def devtool_params
		params.require(:devtool).permit(:title, :icon, :content)
	end
end
