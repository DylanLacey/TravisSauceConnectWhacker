require "spec_helper"

sites = %w{https://rubygems.org http://beta.cashdeck.com.au http://www.reddit.com http://altavista.com
          http://www.moogle.com http://www.youtube.com http://www.webex.com http://www.geocities.com
          http://www.saucelabs.com http://www.rememberthemilk.com http://www.bees.com http://www.wikipedia.org         
}

describe "The face of the moon", :type => :feature do
  it "visits google" do
    visit "http://www.google.com"
    combobox = find :id, "lst-ib"
  end

  it "visits narrow design" do
    visit "http://www.narrowdesign.com/"
  end

  it "goes elsewhere" do
    visit "https://rubygems.org"
    visit "http://beta.cashdeck.com.au"
    visit "http://www.reddit.com"
    visit "http://altavista.com"
    visit "http://www.moogle.com"
    visit "http://youtube.com"
    visit "http://tooneyd.tumblr.com/post/112763203403/basedthursday-sean3116-beesmygod-krudman"
    visit "https://github.com/divmain/GitSavvy"
    visit "https://www.rememberthemilk.com/home"
    visit "http://www.webex.com"
    visit "http://www.saucelabs.com"
  end

  it "goes other places" do
    visit "https://rubygems.org"
    visit "http://beta.cashdeck.com.au"
    visit "http://www.reddit.com"
    visit "http://altavista.com"
    visit "http://www.moogle.com"
    visit "http://youtube.com"
    visit "http://tooneyd.tumblr.com/post/112763203403/basedthursday-sean3116-beesmygod-krudman"
    visit "https://github.com/divmain/GitSavvy"
    visit "https://www.rememberthemilk.com/home"
    visit "http://www.webex.com"
    visit "http://www.saucelabs.com"
  end

  it "tries to mess with caches" do
    sites.shuffle.each {|site| visit site}
  end
end