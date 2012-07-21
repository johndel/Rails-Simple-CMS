require 'spec_helper'

describe "uploads/index" do
  before(:each) do
    assign(:uploads, [
      stub_model(Upload),
      stub_model(Upload)
    ])
  end

  it "renders a list of uploads" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
