# config/authorization_rules.rb
authorization do
  role :admin do
     has_permission_on :authorization_rules, :to => :read
     has_permission_on [:users, :characters, :cities, :transactions, :games], 
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

  for city in City.all
    role ("support_" +city.name.downcase).to_sym do
        includes :player
        has_permission_on :transactions, :to => [:create, :new, :index, :show]
        has_permission_on :characters, :to => [:show, :index]
        has_permission_on :characters, :to => [:edit, :update, :create, :new] do
          if_attribute :city_id => city.id
        end
      end
    end
end