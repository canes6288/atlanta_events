require 'rails_helper'

RSpec.describe "events/show", :type => :view do
  before(:each) do
    @event = assign(:event, Event.create!(
      :name => "Name",
      :description => "MyText",
      :url_name => "Url Name",
      :hidden => false,
      :user_id => "User"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Url Name/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/User/)
  end
end
