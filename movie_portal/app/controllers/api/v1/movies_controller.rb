 class Api::V1::MoviesController < ApplicationController
 	def create
 		@movie=Movie.new(movie_params)
 		if @movie.save

    		render json: {message:'sucessfully created',data: @movie,status_code:201}
    	else
    		render json:{message:'failure',data:@movie.errors,status_code:422}
    	end
    end

 	def index
 		if @movies=Movie.all
        	render json:{message:'successfully listed',data:@movies,status_code:201}
        else
         end
     end

      def update
        	@movie=Movie.find_by_id(params[:id])
        	if @movie.update_attributes(movie_params)
        		render json:{message:'successfully updated',data:@movie,status_code:201}
        	else
                render json:{message:'failure',data:@movie.errors,status_code:422}
        	end
        end

      def destroy
        	@movie=Movie.find_by_id(params[:id])
        	if @movie.destroy
        		render json:{message:'successfully deleted',data:@movie,status_code:201}
        	else
        	end
     end   

     def show
     		@movie=Movie.find_by_title(params[:title])
     		render json:{message:'successfully showed',data:@movie,status_code:201}

     end




 	private
 	def movie_params
 		params.require(:movie).permit(:title,:year,:rating,:language)
 	end
 end