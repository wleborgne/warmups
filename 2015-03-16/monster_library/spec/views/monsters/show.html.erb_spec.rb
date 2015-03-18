require 'rails_helper'

RSpec.describe "monsters/show", type: :view do
  before(:each) do
    @monster = assign(:monster, Monster.create!(
      :color => "Color",
      :eyes => 1,
      :diet => "Diet"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Color/)
    expect(rendered).to match(/1/)
    expect(rendered).to match(/Diet/)
  end
end
