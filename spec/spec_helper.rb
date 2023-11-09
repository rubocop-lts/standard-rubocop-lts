# frozen_string_literal: true

# external gems
# This does not require "simplecov",
#   because that has a side-effect of running `.simplecov`
require "kettle-soup-cover"
require "version_gem/ruby"
require "version_gem/rspec"

# RSpec Configs
require "config/rspec/rspec_core"
require "config/rspec/rspec_block_is_expected"

require "simplecov" if Kettle::Soup::Cover::DO_COV

# This gem
require "standard-rubocop-lts"
