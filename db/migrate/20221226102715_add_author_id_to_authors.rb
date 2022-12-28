class AddAuthorIdToAuthors < ActiveRecord::Migration[7.0]
  def change
    add_column :authors, :author_id, :integer
  end
end
