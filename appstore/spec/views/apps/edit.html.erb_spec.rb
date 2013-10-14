require 'spec_helper'

describe "apps/edit" do
  before(:each) do
    @app = assign(:app, stub_model(App,
      :name => "MyString",
      :description => "MyText",
      :rating => "9.99",
      :ratings => 1,
      :user_id => 1
    ))
  end

  it "renders the edit app form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", app_path(@app), "post" do
      assert_select "input#app_name[name=?]", "app[name]"
      assert_select "textarea#app_description[name=?]", "app[description]"
      assert_select "input#app_rating[name=?]", "app[rating]"
      assert_select "input#app_ratings[name=?]", "app[ratings]"
      assert_select "input#app_user_id[name=?]", "app[user_id]"
    end
  end
end
