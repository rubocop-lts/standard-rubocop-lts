# frozen_string_literal: true

namespace(:rubocop_gradual) do
  desc("Dogfood internal RuboCop configs")
  task(:dogfood) do
    sh("bundle", "exec", "rubocop", "-c", ".rubocop-dogfood.yml")
  end
end
