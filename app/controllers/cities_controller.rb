class CitiesController < InheritedResources::Base

  access_control do
      allow logged_in
   end
  
end