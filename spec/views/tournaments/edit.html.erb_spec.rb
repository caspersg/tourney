require 'spec_helper'

describe "tournaments/edit" do
  before(:each) do
    @tournament = assign(:tournament, stub_model(Tournament,
      :name => "MyText",
      :description => "MyText",
      :points_percentage => "9.99"
    ))
  end

  it "renders the edit tournament form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", tournament_path(@tournament), "post" do
      assert_select "textarea#tournament_name[name=?]", "tournament[name]"
      assert_select "textarea#tournament_description[name=?]", "tournament[description]"
      assert_select "input#tournament_points_percentage[name=?]", "tournament[points_percentage]"
    end
  end
end
