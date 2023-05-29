# frozen_string_literal: true

# external libs
require "version_gem"

require_relative "lts/version"

module Standard
  module Rubocop
    module Lts
      class Error < StandardError; end
      # Your code goes here...
    end
  end
end

Standard::Rubocop::Lts::Version.class_eval do
  extend VersionGem::Basic
end
