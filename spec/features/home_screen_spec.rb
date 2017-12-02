require 'rails_helper'

RSpec.feature 'Home screen', type: :feature do
  let!(:ruby) { create(:checklist, title: 'Ruby') }
  let!(:elm) { create(:checklist, title: 'Elm') }

  scenario 'displays checklists' do
    visit root_path

    expect(page).to have_text('Ruby')
    expect(page).to have_text('Elm')
  end
end
