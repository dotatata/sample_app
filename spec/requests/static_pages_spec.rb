require 'spec_helper'

describe "StaticPages" do
  # 使用application_helper时 base_title变量在测试用例中无法被正确赋值 只能采用字符串
  # let(:base_title) { "Ruby on Rails Tutorial Sample App" }

  describe "HomePage" do
    it "should have the content 'Sample App'" do
      visit '/static_pages/home'
      expect(page).to have_content('Sample App')
    end
    it "should have the base title" do
      visit '/static_pages/home'
      expect(page).to have_title("Ruby on Rails Tutorial Sample App")
    end
    it "should not have a custom page title" do
      visit '/static_pages/home'
      # expect(page).to have_title('#{base_title} | Home')
      expect(page).not_to have_title('| Home')
    end
  end

  describe "HelpPage" do
    it "should have the content 'Help'" do
      visit '/static_pages/help'
      expect(page).to have_content('Help')
    end
    it "should have the right title" do
      visit '/static_pages/help'
      expect(page).to have_title('Ruby on Rails Tutorial Sample App | Help')
    end
  end

  describe "AboutPage" do
    it "should have the content 'About Us'" do
      visit '/static_pages/about'
      expect(page).to have_content('About Us')
    end
    it "should have the right title" do
      visit '/static_pages/about'
      expect(page).to have_title('Ruby on Rails Tutorial Sample App | About')
    end
  end

  describe "ContactPage" do
    it "should have the content 'Contact'" do
      visit '/static_pages/contact'
      expect(page).to have_content('Contact Us')
    end
    it "should have the right title" do
      visit '/static_pages/contact'
      # expect(page).to have_title('#{base_title} | Contact')
      expect(page).to have_title('Ruby on Rails Tutorial Sample App | Contact')
    end
  end
end
