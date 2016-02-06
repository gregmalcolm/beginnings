require 'rails_helper'

RSpec.describe "examples/index", type: :view do
  before(:each) do
    assign(:examples, [
      Example.create!(
        :name => "Name",
        :favorite_color => "Favorite Color"
      ),
      Example.create!(
        :name => "Name",
        :favorite_color => "Favorite Color"
      )
    ])
  end

  it "renders a list of examples" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Favorite Color".to_s, :count => 2
  end
end
