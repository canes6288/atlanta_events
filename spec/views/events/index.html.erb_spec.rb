require 'rails_helper'

RSpec.describe "events/index", :type => :view do
  before(:each) do
    assign(:events, [
      Event.create!(
        :name => "Name",
        :description => "MyText",
        :url_name => "Url Name",
        :hidden => false,
        :user_id => "User"
      ),
      Event.create!(
        :name => "Name",
        :description => "MyText",
        :url_name => "Url Name",
        :hidden => false,
        :user_id => "User"
      )
    ])
  end

  it "renders a list of events" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Url Name".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => "User".to_s, :count => 2
  end
end
