require 'rails_helper'

RSpec.describe "contacts/index", type: :view do
  before(:each) do
    assign(:contacts, [
      Contact.create!(
        :name => "Name",
        :email => "Email",
        :phone => "Phone",
        :subject => "Subject",
        :subject_contact => nil,
        :message => "MyText",
        :accepted => false,
        :newsletter => false,
        :automatic_answer => false,
        :manual_answer => false
      ),
      Contact.create!(
        :name => "Name",
        :email => "Email",
        :phone => "Phone",
        :subject => "Subject",
        :subject_contact => nil,
        :message => "MyText",
        :accepted => false,
        :newsletter => false,
        :automatic_answer => false,
        :manual_answer => false
      )
    ])
  end

  it "renders a list of contacts" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => "Phone".to_s, :count => 2
    assert_select "tr>td", :text => "Subject".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
