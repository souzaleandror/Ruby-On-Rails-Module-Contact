require 'rails_helper'

RSpec.describe "contacts/new", type: :view do
  before(:each) do
    assign(:contact, Contact.new(
      :name => "MyString",
      :email => "MyString",
      :phone => "MyString",
      :subject => "MyString",
      :subject_contact => nil,
      :message => "MyText",
      :accepted => false,
      :newsletter => false,
      :automatic_answer => false,
      :manual_answer => false
    ))
  end

  it "renders new contact form" do
    render

    assert_select "form[action=?][method=?]", contacts_path, "post" do

      assert_select "input[name=?]", "contact[name]"

      assert_select "input[name=?]", "contact[email]"

      assert_select "input[name=?]", "contact[phone]"

      assert_select "input[name=?]", "contact[subject]"

      assert_select "input[name=?]", "contact[subject_contact_id]"

      assert_select "textarea[name=?]", "contact[message]"

      assert_select "input[name=?]", "contact[accepted]"

      assert_select "input[name=?]", "contact[newsletter]"

      assert_select "input[name=?]", "contact[automatic_answer]"

      assert_select "input[name=?]", "contact[manual_answer]"
    end
  end
end
