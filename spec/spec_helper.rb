require 'capybara/rspec'
require "sauce/capybara"

Sauce.config do |c|
  c[:browsers] = [
    ["Windows 7", "Chrome", ""]
  ]
end

Capybara.default_driver= :sauce
Capybara.javascript_driver = :sauce