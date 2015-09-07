require 'capybara'
require 'rails_helper'

RSpec.feature "Basic, unauthenticated, users", type: :feature do
  pending "add some scenarios (or delete) #{__FILE__}"
  describe "can visit home page" do
    it "gives welcome message" do
      visit "/"
      expect(page.find("h1")).to have_content("hello")
    end
  end
end
