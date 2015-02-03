require 'rails_helper'

RSpec.describe "hoges/show", :type => :view do
  before(:each) do
    @hoge = assign(:hoge, Hoge.create!(
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
  end
end
