# frozen_string_literal: true

# external libs
require "version_gem"
require "rubocop"
require "standard-custom"

require_relative "lts/version"
# Load any Cops that aren't explicitly loaded by standard's plugins (e.g. standard-custom).
require_relative "lts/cops"

# Namespace for this library
module Standard
  # Configure / override standard's rules for use with rubocop-lts
  module Rubocop
    # Lts indicates support for Ruby style linting back to Ruby 1.8 & 1.9
    # rubocop itself stops at Ruby 2.0
    module Lts
      # So far, the Error class is unused.
      class Error < StandardError; end
    end
  end
end

Standard::Rubocop::Lts::Version.class_eval do
  extend VersionGem::Basic
end
