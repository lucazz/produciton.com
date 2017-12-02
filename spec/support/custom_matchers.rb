RSpec::Matchers.define :have_checklist_link do |expected|
  selector = 'ul.checklist-list > li > a'
  match do |actual|
    expect(actual).to have_selector(selector, text: expected.to_s)
  end

  description do
    "have a checklist link for #{expected}"
  end
end
