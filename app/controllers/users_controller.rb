class UsersController < Clearance::UsersController
  
  filter_resource_access
  
  def interpolation_options
        { :user_email => @user.email }
      end
  
      def index
         @users = User.all
       end
      def update
        if @user.update_attributes(params[:user])
          flash[:notice] = "Successfully updated details."
          redirect_to @user
        else
          render :action => 'edit'
        end
      end
end
