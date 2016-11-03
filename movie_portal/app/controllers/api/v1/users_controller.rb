 class Api::V1::UsersController < ApplicationController
 	def create
 		@user=User.new(user_params)
 		if @user.save

    		render json: {message:'sucessfully created',data: @user,status_code:201}
    	else
    		render json:{message:'failure',data:@user.errors,status_code:422}
    	end
    end

 	def index
 		if @users=User.all
        	render json:{message:'successfully listed',data:@users,status_code:201}
        else
         end
 	end

    def update
        	@user=User.find_by_id(params[:id])
        	if @user.update_attributes(user_params)
        		render json:{message:'successfully updated',data:@user,status_code:201}
        	else
                render json:{message:'failure',data:@user.errors,status_code:422}
        	end
        end

      def destroy
        	@user=User.find_by_id(params[:id])
        	if @user.destroy
        		render json:{message:'successfully deleted',data:@user,status_code:201}
        	else
        	end
      end  

      def show
      	@user=User.find_by_name(params[:name])
     		render json:{message:'successfully showed',data:@user,status_code:201}

      end 


 	private
 	def user_params
 		params.require(:user).permit(:name,:age,:role,:gender)
 	end
 end