class CreateTagData < ActiveRecord::Migration[5.1]
  def change
    create_table :tag_data do |t|
      t.string :tag
      t.text :content

      t.timestamps
    end
  end
end
