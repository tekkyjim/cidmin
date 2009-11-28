begin
   require 'cucumber_screenshot'
   World(CucumberScreenshot::World)

   After do |scenario|
     if scenario.failed?
       screenshot
     end
   end

   AfterStep('@screenshot') do |scenario|
     if screenshot_due?
       screenshot
     end
   end
 rescue Exception => e
   puts "Snapshots not available for this environment. Try installing
     cucumber-screenshot with\n\n  gem install cucumber-screenshot\n"
 end
