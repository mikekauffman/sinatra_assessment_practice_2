require_relative '../app'
require 'spec_helper'
require 'capybara/rspec'

Capybara.app = App

feature 'Manage Homepage' do
  scenario 'Homepage displays welcome as well as user-created tasks via a form input' do
    visit '/'
    expect(page).to have_content 'Welcome'
    click_link 'Add a Task'
    fill_in 'new_task', :with => 'Cook Dinner'
    click_on 'Create Task'
    expect(page).to have_content 'Welcome'
    expect(page).to have_content 'Cook Dinner'
  end
end