require 'spec_helper'

describe "apps/index" do
  before(:each) do
    assign(:apps, [
      stub_model(App,
        :name => "Name",
        :description => "MyText",
        :rating => "9.99",
        :ratings => 1,
        :user_id => 2
      ),
      stub_model(App,
        :name => "Name",
        :description => "MyText",
        :rating => "9.99",
        :ratings => 1,
        :user_id => 2
      )
    ])
  end

  it "renders a list of apps" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
