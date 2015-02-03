require 'rails_helper'

RSpec.describe "hoges/new", :type => :view do
  before(:each) do
    assign(:hoge, Hoge.new(
      :name => "MyString"
    ))
  end

  it "renders new hoge form" do
    render

    assert_select "form[action=?][method=?]", hoges_path, "post" do

      assert_select "input#hoge_name[name=?]", "hoge[name]"
    end
  end
end
