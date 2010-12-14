require 'spec_helper'

describe "Homepage" do

  before do
    visit("http://selenium-test-app.heroku.com/")
  end

  it 'can enter a name' do
    page.should have_selector('#user_name')
  end

end