require 'rails_helper'

RSpec.describe "monsters/index", type: :view do
  before(:each) do
    assign(:monsters, [
      Monster.create!(
        :color => "Color",
        :eyes => 1,
        :diet => "Diet"
      ),
      Monster.create!(
        :color => "Color",
        :eyes => 1,
        :diet => "Diet"
      )
    ])
  end

  it "renders a list of monsters" do
    render
    assert_select "tr>td", :text => "Color".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Diet".to_s, :count => 2
  end
end
