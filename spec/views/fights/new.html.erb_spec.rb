require 'spec_helper'

describe "fights/new" do
  before(:each) do
    assign(:fight, stub_model(Fight,
      :winner_id => 1,
      :loser_id => 1,
      :winner_before_points => 1,
      :winner_after_points => 1,
      :loser_before_points => 1,
      :loser_after_points => 1,
      :tournament_id => 1
    ).as_new_record)
  end

  it "renders new fight form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", fights_path, "post" do
      assert_select "input#fight_winner_id[name=?]", "fight[winner_id]"
      assert_select "input#fight_loser_id[name=?]", "fight[loser_id]"
      assert_select "input#fight_winner_before_points[name=?]", "fight[winner_before_points]"
      assert_select "input#fight_winner_after_points[name=?]", "fight[winner_after_points]"
      assert_select "input#fight_loser_before_points[name=?]", "fight[loser_before_points]"
      assert_select "input#fight_loser_after_points[name=?]", "fight[loser_after_points]"
      assert_select "input#fight_tournament_id[name=?]", "fight[tournament_id]"
    end
  end
end
