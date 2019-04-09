class CreateContacts < ActiveRecord::Migration[5.2]
  def change
    create_table :contacts do |t|
      t.string :name
      t.string :email
      t.string :phone
      t.string :subject
      t.references :subject_contact, foreign_key: true
      t.text :message
      t.boolean :accepted
      t.boolean :newsletter

      t.timestamps
    end
  end
end
