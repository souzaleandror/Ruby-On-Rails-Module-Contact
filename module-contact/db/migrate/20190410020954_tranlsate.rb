class Tranlsate < ActiveRecord::Migration[5.2]
  def change
    reversible do |dir|
      dir.up do
        SubjectContact.create_translation_table!({
          :name => :string,
          :variable_name => :string
        }, {
          :migrate_data => true
        })
      end

      dir.down do
        SubjectContact.drop_translation_table! :migrate_data => true
      end
    end
  end
end
