class CreateSubjectContacts < ActiveRecord::Migration[5.2]
  def change
    create_table :subject_contacts do |t|
      t.string :name
      t.string :variable_name
      t.boolean :inactive

      t.timestamps
    end
  end
end
