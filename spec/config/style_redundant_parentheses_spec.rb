# frozen_string_literal: true

require "rubocop"
require "rubocop-rake"

RSpec.describe "Style/RedundantParentheses configuration" do
  it "disables autocorrection for the Ruby 1.8-compatible config" do
    config = RuboCop::ConfigLoader.load_file(File.expand_path("../../config/ruby-1.8.yml", __dir__))

    expect(config["Style/RedundantParentheses"]).to include("AutoCorrect" => false)
  end

  it "also disables autocorrection for modern configs" do
    config = RuboCop::ConfigLoader.load_file(File.expand_path("../../config/ruby-3.4.yml", __dir__))

    expect(config["Style/RedundantParentheses"]).to include("AutoCorrect" => false)
  end
end
