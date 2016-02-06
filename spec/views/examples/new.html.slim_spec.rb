require 'rails_helper'

RSpec.describe "examples/new", type: :view do
  before(:each) do
    assign(:example, Example.new(
      :name => "MyString",
      :favorite_color => "MyString"
    ))
  end

  it "renders new example form" do
    render

    assert_select "form[action=?][method=?]", examples_path, "post" do

      assert_select "input#example_name[name=?]", "example[name]"

      assert_select "input#example_favorite_color[name=?]", "example[favorite_color]"
    end
  end
end
