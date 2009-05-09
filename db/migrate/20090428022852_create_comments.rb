class CreateComments < ActiveRecord::Migration
  def self.up
    
    create_table :post_comments do |t|
      t.integer :user_id, :primary_key => true
      t.integer :post_id, :allow_nil => false
      t.text :comment
      t.timestamps
    end

  end

  def self.down
    drop_table :comments
  end
end
