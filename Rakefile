require "bundler/gem_tasks"
require "rspec/core/rake_task"

RSpec::Core::RakeTask.new(:spec)

task :default => :spec

task :benchmark do
  require_relative 'benchmark/benchmark'
  NoaidiBenchmark.run
end
