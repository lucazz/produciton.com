require 'rails_helper'

RSpec.feature 'Home screen', type: :feature do
  let!(:ruby) { create(:checklist, title: 'Ruby') }
  let!(:elm) { create(:checklist, title: 'Elm') }

  scenario 'displays checklists' do
    visit root_path

    expect(page).to have_checklist_link(ruby)
    expect(page).to have_checklist_link(elm)
  end
end
