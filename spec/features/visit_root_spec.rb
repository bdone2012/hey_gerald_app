require 'spec_helper'


describe "when you visit the root", js: true do

  it "the page should say 'Hey Macarena'" do
    visit("/")
    expect( page ).to have_content "Hey Macarena"
  end

  it "says Hey Gerald clicking 'Hey Macarena'" do
   visit("/")
   page.find("h1", :text => "Hey Macarena").clicking
   expect(page).to have_content "Hey Gerald"
  end
end
