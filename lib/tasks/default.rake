Rake::Task[:default].prerequisites.clear

desc "Run cucumber and rspec"
task :default => ['spec', 'cucumber']
