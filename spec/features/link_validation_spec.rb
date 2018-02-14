feature "link validation" do
  scenario "an error is raised if an invalid URL is entered" do
    visit("/")
    fill_in("url", with: "http://wwwhello.com")
    click_button("Add link")
    expect(page).to have_content("Invalid URL")
  end

  scenario "an error is raised if an invalid URL is entered" do
    visit("/")
    fill_in("url", with: "http://www.hellocom")
    click_button("Add link")
    expect(page).to have_content("Invalid URL")
  end

  scenario "an error is raised if an invalid URL is entered" do
    visit("/")
    fill_in("url", with: "http://wwwhellocom")
    click_button("Add link")
    expect(page).to have_content("Invalid URL")
  end

  scenario "an error is raised if an invalid URL is entered" do
    visit("/")
    fill_in("url", with: "hello")
    click_button("Add link")
    expect(page).to have_content("Invalid URL")
  end

  scenario "an error is raised if an invalid URL is entered" do
    visit("/")
    fill_in("url", with: ".hello")
    click_button("Add link")
    expect(page).to have_content("Invalid URL")
  end
end 

