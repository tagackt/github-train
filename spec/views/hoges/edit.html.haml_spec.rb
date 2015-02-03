require 'rails_helper'

RSpec.describe "hoges/edit", :type => :view do
  before(:each) do
    @hoge = assign(:hoge, Hoge.create!(
      :name => "MyString"
    ))
  end

  it "renders the edit hoge form" do
    render

    assert_select "form[action=?][method=?]", hoge_path(@hoge), "post" do

      assert_select "input#hoge_name[name=?]", "hoge[name]"
    end
  end
end
