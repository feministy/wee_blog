class CreateTagclouds < ActiveRecord::Migration
  def change
    create_table :tagclouds do |t|
      t.integer :post_id
      t.integer :tag_id
    end
  end
end
