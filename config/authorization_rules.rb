# config/authorization_rules.rb
authorization do
  role :admin do
     has_permission_on :authorization_rules, :to => :read
     has_permission_on [:users, :characters, :cities, :transactions], 
      :to => [:index, :show, :new, :create, :edit, :update, :destroy]
  end
  
  role :guest do
        has_permission_on :users, :to => [:create, :new]
        has_permission_on :pages, :to => [:view]
  end

  role :player do
      has_permission_on :users, :to => [:edit, :update, :show] do
        if_attribute :email => is { user.email }
      end
      has_permission_on :characters, :to => [:create, :new, :index]
      has_permission_on :characters, :to => [:edit, :update, :show] do
        if_attribute :user_id => is { user.id }
      end
  end

  role :support do
       has_permission_on :characters, :to => [:edit, :update, :show]
       has_permission_on [:users, :characters, :transactions], 
         :to => [:index, :show, :new, :create, :edit, :update, :destroy]
  end
end