feature 'view links' do
  scenario 'display links' do
    visit('/')
    expect(page).to have_content("Links:")
  end
end
