require 'rails_helper'

describe "adding a new task" do
	
	it "can add and reorder a task" do
		visit home_path

		expect(current_path).to eq(home_path)

		click_link "lists"

		expect(current_path).to eq(lists_path)

		fill_in "list_name", with: "Some task name"

		click_button "Create List"

		expect(page).to have_selector(".l-name", text: "Some task name")

	end

	
end