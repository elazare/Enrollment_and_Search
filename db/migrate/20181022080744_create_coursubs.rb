class CreateCoursubs < ActiveRecord::Migration[5.2]
  def change
    create_table :coursubs do |t|
      t.string :subj_id
      t.string :cour_id

      t.timestamps
    end
  end
end
