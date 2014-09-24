class CreateSuggestions < ActiveRecord::Migration
  def change
    create_table :suggestions do |t|
      t.text :description
      t.string :type
      t.references :user, index: true

      t.timestamps
    end
  end
end
