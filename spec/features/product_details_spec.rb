require 'rails_helper'

RSpec.feature "Visitor navigates from the home page to the product detail page", type: :feature, js: true do

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
    click_link("Details »", match: :first)

    # VERIFY
    expect(page).to have_css 'article.product-detail', count: 1

    # DEBUG
    save_screenshot
  end

end