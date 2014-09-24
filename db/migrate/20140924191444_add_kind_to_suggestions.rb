class AddKindToSuggestions < ActiveRecord::Migration
  def change
    add_column :suggestions, :kind, :string
    remove_column :suggestions, :type
  end
end
