class CreateSearches < ActiveRecord::Migration[5.2]
  def change
    create_table :searches do |t|
      t.string :course
      t.string :subject
      t.boolean :usesubj

      t.timestamps
    end
  end
end
