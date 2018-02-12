feature 'view links' do
  scenario 'display links' do
    visit('/')
    expect(find('div.title')).to have_content("Links:")
    expect(page).to have_content "http://www.makersacademy.com"
    expect(page).to have_content "http://www.google.com"
    expect(page).to have_content "http://www.facebook.com"
  end
end
