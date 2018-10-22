class CreateInstructors < ActiveRecord::Migration[5.2]
  def change
    create_table :instructors do |t|
      t.string :email
      t.string :first
      t.string :last
      t.integer :inst_id

      t.timestamps
    end
  end
end
