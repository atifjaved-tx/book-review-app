class CreateAuthors < ActiveRecord::Migration[7.0]
  def change
    create_table :authors do |t|
      t.string :bookname
      t.string :authorname

      t.timestamps
    end
  end
end
