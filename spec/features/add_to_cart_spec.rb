require 'rails_helper'

RSpec.feature "Visitor clicks 'Add to Cart' button & cart increases by one", type: :feature, js: true do

  # SETUP
  before :each do
    @category = Category.create! name: 'Apparel'

    10.times do |n|
      @category.products.create!(
        name: Faker::Hipster.sentence(3),
        description: Faker::Hipster.paragraph(4),
        image: open_asset('apparel1.jpg'),
        quantity: 10,
        price: 64.99
      )
    end
  end

  scenario "They see all products" do
    visit root_path

    # CONFIRM
    click_button("Add", match: :first)

    # VERIFY
    expect(page).to have_text 'My Cart (1)', count: 1

    # DEBUG
    save_screenshot
  end

end