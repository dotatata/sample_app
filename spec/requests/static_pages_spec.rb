require 'spec_helper'

describe "StaticPages" do
  # 使用application_helper时 base_title变量在测试用例中无法被正确赋值 只能采用字符串
  # let(:base_title) { "Ruby on Rails Tutorial Sample App" }

  subject {page}

  describe "HomePage" do
    before {visit root_path}
    it {should have_content('Sample App')}
    it {should have_title(full_title(''))}
    it {should_not have_title(' | Home')}
  end

  describe "HelpPage" do
    before {visit help_path}
    it {should have_content('Help')}
    it {should have_title(full_title(''))}
  end

  describe "AboutPage" do
    before {visit about_path}
    it {should have_content('About')}
    it {should have_title(full_title('About'))}
  end

  describe "ContactPage" do
    before {visit contact_path}
    it {should have_content('Contact')}
    it {should have_title(full_title('Contact'))}
  end

  # describe "ContactPage" do
  #   it "should have the content 'Contact'" do
  #     # visit '/static_pages/contact'
  #     visit contact_path
  #     expect(page).to have_content('Contact Us')
  #   end
  #   it "should have the right title" do
  #     # visit '/static_pages/contact'
  #     visit contact_path
  #     # expect(page).to have_title('#{base_title} | Contact')
  #     expect(page).to have_title('Ruby on Rails Tutorial Sample App | Contact')
  #   end
  # end
end
