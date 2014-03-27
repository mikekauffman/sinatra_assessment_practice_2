require_relative '../app'
require 'spec_helper'
require 'capybara/rspec'

Capybara.app = App

feature 'Manage Homepage' do
  scenario 'Welcome displays on the homepage' do
    visit '/'
    expect(page).to have_content 'Welcome'
  end
end