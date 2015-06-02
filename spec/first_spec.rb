require "spec_helper"

describe "The face of the moon", :type => :feature do
  it "visits google" do
    visit "http://www.google.com"
    combobox = find :id, "lst-ib"
  end

  it "visits narrow design" do
    visit "http://www.narrowdesign.com/"
  end
end