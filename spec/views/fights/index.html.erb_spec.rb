require 'spec_helper'

describe "fights/index" do
  before(:each) do
    assign(:fights, [
      stub_model(Fight,
        :winner_id => 1,
        :loser_id => 2,
        :winner_before_points => 3,
        :winner_after_points => 4,
        :loser_before_points => 5,
        :loser_after_points => 6,
        :tournament_id => 7
      ),
      stub_model(Fight,
        :winner_id => 1,
        :loser_id => 2,
        :winner_before_points => 3,
        :winner_after_points => 4,
        :loser_before_points => 5,
        :loser_after_points => 6,
        :tournament_id => 7
      )
    ])
  end

  it "renders a list of fights" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
    assert_select "tr>td", :text => 5.to_s, :count => 2
    assert_select "tr>td", :text => 6.to_s, :count => 2
    assert_select "tr>td", :text => 7.to_s, :count => 2
  end
end
