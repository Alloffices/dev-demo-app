class CreateDevtools < ActiveRecord::Migration[5.1]
  def change
    create_table :devtools do |t|
      t.text :icon
      t.text :content

      t.timestamps
    end
  end
end
