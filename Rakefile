# frozen_string_literal: true

require "bundler/gem_tasks"

defaults = []

require "kettle-soup-cover"
Kettle::Soup::Cover.install_tasks

begin
  require "rspec/core/rake_task"
  RSpec::Core::RakeTask.new(:spec)
  defaults << :spec
rescue LoadError
  desc("spec task stub")
  task(:spec) do
    warn("NOTE: rspec isn't installed, or is disabled for #{RUBY_VERSION} in the current environment")
  end
end
desc "alias test task to spec"
task test: :spec

begin
  require "yard"

  YARD::Rake::YardocTask.new do |t|
    t.files = [
      # Splats (alphabetical)
      "lib/**/*.rb",
    ]
  end
  defaults << :yard
rescue LoadError
  task(:yard) do
    warn("NOTE: yard isn't installed, or is disabled for #{RUBY_VERSION} in the current environment")
  end
end

begin
  require "rubocop/gradual/rake_task"

  RuboCop::Gradual::RakeTask.new

  defaults << :rubocop_gradual
rescue LoadError
  task :rubocop_gradual do
    warn "NOTE: rubocop-gradual isn't installed, or is disabled for #{RUBY_VERSION} in the current environment"
  end
end

task default: defaults
