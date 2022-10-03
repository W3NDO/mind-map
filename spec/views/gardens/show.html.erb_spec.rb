require 'rails_helper'

RSpec.describe "gardens/show", type: :view do
  before(:each) do
    @garden = assign(:garden, Garden.create!(
      name: "Name",
      context: "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/MyText/)
  end
end
