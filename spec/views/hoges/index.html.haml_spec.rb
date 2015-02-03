require 'rails_helper'

RSpec.describe "hoges/index", :type => :view do
  before(:each) do
    assign(:hoges, [
      Hoge.create!(
        :name => "Name"
      ),
      Hoge.create!(
        :name => "Name"
      )
    ])
  end

  it "renders a list of hoges" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
