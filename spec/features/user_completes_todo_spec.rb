require 'rails_helper'

feature "User completes a todo" do
  scenario "successfully" do
    sign_in

    create_todo "Buy milk"

    # check ('Buy milk')
    click_on "Mark as complete"
    expect(page).to display_completed_todo "Buy milk"
  end

end
