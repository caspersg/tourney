require 'spec_helper'

describe "fighters/index" do
  before(:each) do
    assign(:fighters, [
      stub_model(Fighter,
        :name => "MyText",
        :points => 1
      ),
      stub_model(Fighter,
        :name => "MyText",
        :points => 1
      )
    ])
  end

  it "renders a list of fighters" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
