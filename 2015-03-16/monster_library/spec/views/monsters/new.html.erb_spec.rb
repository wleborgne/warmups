require 'rails_helper'

RSpec.describe "monsters/new", type: :view do
  before(:each) do
    assign(:monster, Monster.new(
      :color => "MyString",
      :eyes => 1,
      :diet => "MyString"
    ))
  end

  it "renders new monster form" do
    render

    assert_select "form[action=?][method=?]", monsters_path, "post" do

      assert_select "input#monster_color[name=?]", "monster[color]"

      assert_select "input#monster_eyes[name=?]", "monster[eyes]"

      assert_select "input#monster_diet[name=?]", "monster[diet]"
    end
  end
end
