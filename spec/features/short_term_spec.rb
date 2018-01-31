require 'rails_helper'

feature "parking", :type => :feature do

  scenario "short-term parking" do
    user = User.create!( :email => "foobar@example.com", :password => "12345678")
    sign_in(user) # 这样就可以登入了
# 这里用了 choose 来对 Radio 按钮做选择，在 capybara 中还有提供其他方法针对不同表单元件做操作，例如：
# check "核选方块名称"
# uncheck "核选方块名称"
# select "选项名称", :from => "下拉选单名称"
# attach_file 上传档案

    visit "/"
    choose "短期费率"  # 选 radio button


    click_button "开始计费"

    click_button "结束计费"

    expect(page).to have_content("$2.00")
  end

end