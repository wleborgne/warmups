require 'rails_helper'

RSpec.describe "monsters/edit", type: :view do
  before(:each) do
    @monster = assign(:monster, Monster.create!(
      :color => "MyString",
      :eyes => 1,
      :diet => "MyString"
    ))
  end

  it "renders the edit monster form" do
    render

    assert_select "form[action=?][method=?]", monster_path(@monster), "post" do

      assert_select "input#monster_color[name=?]", "monster[color]"

      assert_select "input#monster_eyes[name=?]", "monster[eyes]"

      assert_select "input#monster_diet[name=?]", "monster[diet]"
    end
  end
end
