require 'spec_helper'

describe "fighters/show" do
  before(:each) do
    @fighter = assign(:fighter, stub_model(Fighter,
      :name => "MyText",
      :points => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/MyText/)
    rendered.should match(/1/)
  end
end
