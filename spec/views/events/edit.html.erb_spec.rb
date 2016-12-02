require 'rails_helper'

RSpec.describe "events/edit", :type => :view do
  before(:each) do
    @event = assign(:event, Event.create!(
      :name => "MyString",
      :description => "MyText",
      :url_name => "MyString",
      :hidden => false,
      :user_id => "MyString"
    ))
  end

  it "renders the edit event form" do
    render

    assert_select "form[action=?][method=?]", event_path(@event), "post" do

      assert_select "input#event_name[name=?]", "event[name]"

      assert_select "textarea#event_description[name=?]", "event[description]"

      assert_select "input#event_url_name[name=?]", "event[url_name]"

      assert_select "input#event_hidden[name=?]", "event[hidden]"

      assert_select "input#event_user_id[name=?]", "event[user_id]"
    end
  end
end
