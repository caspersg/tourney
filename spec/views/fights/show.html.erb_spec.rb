require 'spec_helper'

describe "fights/show" do
  before(:each) do
    @fight = assign(:fight, stub_model(Fight,
      :winner_id => 1,
      :loser_id => 2,
      :winner_before_points => 3,
      :winner_after_points => 4,
      :loser_before_points => 5,
      :loser_after_points => 6,
      :tournament_id => 7
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/2/)
    rendered.should match(/3/)
    rendered.should match(/4/)
    rendered.should match(/5/)
    rendered.should match(/6/)
    rendered.should match(/7/)
  end
end
