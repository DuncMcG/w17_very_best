class CreateBookmarkeds < ActiveRecord::Migration
  def change
    create_table :bookmarkeds do |t|
      t.integer :entree_id
      t.integer :user_id

      t.timestamps

    end
  end
end
