require 'rails_helper'

RSpec.describe "contacts/edit", type: :view do
  before(:each) do
    @contact = assign(:contact, Contact.create!(
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

  it "renders the edit contact form" do
    render

    assert_select "form[action=?][method=?]", contact_path(@contact), "post" do

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
