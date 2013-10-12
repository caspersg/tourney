require 'spec_helper'

describe "fighters/new" do
  before(:each) do
    assign(:fighter, stub_model(Fighter,
      :name => "MyText",
      :points => 1
    ).as_new_record)
  end

  it "renders new fighter form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", fighters_path, "post" do
      assert_select "textarea#fighter_name[name=?]", "fighter[name]"
      assert_select "input#fighter_points[name=?]", "fighter[points]"
    end
  end
end
