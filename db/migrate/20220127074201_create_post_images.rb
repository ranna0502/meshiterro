class CreatePostImages < ActiveRecord::Migration[6.1]

  def change
    create_table :post_images, :id => false do |t|

      t.integer :id, :primary_key => true
      t.string :shop_name
      t.text :caption
      t.integer :user_id
      t.timestamps
    end

  end

end

