# frozen_string_literal: true

class CreatePageContents < ActiveRecord::Migration[5.2]
  def change
    create_table :page_contents do |t|
      t.string :type
      t.text :content
      t.integer :page_id

      t.timestamps
    end
  end
end
