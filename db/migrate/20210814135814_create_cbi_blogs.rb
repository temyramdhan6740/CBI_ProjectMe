class CreateCbiBlogs < ActiveRecord::Migration[5.0]
  def change
    create_table :cbi_blogs do |t|
      t.string :blog_id
      t.string :blog_title
      t.string :blog_desc

      t.timestamps
    end
  end
end
