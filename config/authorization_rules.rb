# config/authorization_rules.rb
authorization do
  role :admin do
     has_permission_on [:users, :characters, :cities, :transactions], 
      :to => [:index, :show, :new, :create, :edit, :update, :destroy]
  end
  
  role :guest do
      has_permission_on :users, :to => [:create, :new]
      has_permission_on :users, :to => [:edit, :update, :show] do
        if_attribute :email => is { user.email }
      end
  end

    role :moderator do
      includes :guest
      has_permission_on :comments, :to => [:edit, :update]
    end

    role :author do
      includes :guest
      has_permission_on :articles, :to => [:new, :create]
      has_permission_on :articles, :to => [:edit, :update] do
        if_attribute :user => is { user }
      end
    end
end