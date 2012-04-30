class GenresController < ApplicationController
  def index
  	@genres = Genre.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @genres }
  end
end
		def show
		    #raise params.inspect 
		    @genre = Genre.find(params[:id])

		    respond_to do |format|
		      format.html # show.html.erb
		      format.json { render json: @genre }
		    end
		  end
#or maybe not end?
end
		def new
		    @genre = Genre.new

		    respond_to do |format|
		      format.html # new.html.erb
		      format.json { render json: @genre }
		  end

			def edit
			    @genre = Genre.find(params[:id])
			  end

			  # POST /Grenes
			  # POST /Grenes.json
			  def create
			    @genre = Grene.new(params[:Grene])

			    respond_to do |format|
			      if @genre.save
			        format.html { redirect_to @genre, notice: 'Grene was successfully created.' }
			        format.json { render json: @genre, status: :created, location: @genre }
			      else
			        format.html { render action: "new" }
			        format.json { render json: @genre.errors, status: :unprocessable_entity }
			      end
			    end
			  end

			  # PUT /Grenes/1
			  # PUT /Grenes/1.json
			  def update
			    @genre = Grene.find(params[:id])

			    respond_to do |format|
			      if @genre.update_attributes(params[:Grene])
			        format.html { redirect_to @genre, notice: 'Grene was successfully updated.' }
			        format.json { head :no_content }
			      else
			        format.html { render action: "edit" }
			        format.json { render json: @genre.errors, status: :unprocessable_entity }
			      end
			    end
			  end

			  # DELETE /Grenes/1
			  # DELETE /Grenes/1.json
			  def destroy
			    @genre = Grene.find(params[:id])
			    @genre.destroy

			    respond_to do |format|
			      format.html { redirect_to Grenes_url }
			      format.json { head :no_content }
			    end
			  end
			end
