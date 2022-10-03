require 'rails_helper'

RSpec.describe "gardens/new", type: :view do
  before(:each) do
    assign(:garden, Garden.new(
      name: "MyString",
      context: "MyText"
    ))
  end

  it "renders new garden form" do
    render

    assert_select "form[action=?][method=?]", gardens_path, "post" do

      assert_select "input[name=?]", "garden[name]"

      assert_select "textarea[name=?]", "garden[context]"
    end
  end
end
