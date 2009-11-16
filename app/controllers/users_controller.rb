class UsersController < Clearance::UsersController
  def interpolation_options
        { :user_email => @user.email }
      end
end
