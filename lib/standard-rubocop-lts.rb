# For technical reasons, if we move to Zeitwerk, this cannot be require_relative.
#   See: https://github.com/fxn/zeitwerk#for_gem_extension
# Hook for other libraries to load this library (e.g. via bundler)
require "standard/rubocop/lts"
require "version_gem"
require_relative "standard/rubocop/lts/version"

Standard::Rubocop::Lts::Version.class_eval do
  extend VersionGem::Basic
end
