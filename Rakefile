require "bundler/gem_tasks"

$:.unshift File.dirname(__FILE__) + 'lib'

require 'rspec/core/rake_task'
RSpec::Core::RakeTask.new
task :default => :spec

#Rdoc requirements
require 'rdoc/task'
Rake::RDocTask.new(:rdoc_dev) do |rd|
    rd.main = "README.rdoc"
    rd.rdoc_files.include("README.rdoc", "lib/**/*.rb")
    rd.options << "--all"
end
