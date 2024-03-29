class Visit < ActiveRecord::Migration
  def change
    create_table :visits do |t|
      t.integer :visits, default: 1
      t.integer :shortened_url_id, null: false
      t.integer :user_id, null: false

      t.timestamps
    end

    add_index :visits, :shortened_url_id
    add_index :visits, :user_id
  end
end
