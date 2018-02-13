feature 'view links' do
  scenario 'display links' do
    visit('/')
    click_button("View all links")
    expect(page).to have_content "http://www.makersacademy.com"
    expect(page).to have_content "http://www.google.com"
    expect(page).to have_content "http://www.facebook.com"
  end
end
