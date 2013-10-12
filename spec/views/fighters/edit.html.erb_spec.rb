require 'spec_helper'

describe "fighters/edit" do
  before(:each) do
    @fighter = assign(:fighter, stub_model(Fighter,
      :name => "MyText",
      :points => 1
    ))
  end

  it "renders the edit fighter form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", fighter_path(@fighter), "post" do
      assert_select "textarea#fighter_name[name=?]", "fighter[name]"
      assert_select "input#fighter_points[name=?]", "fighter[points]"
    end
  end
end
