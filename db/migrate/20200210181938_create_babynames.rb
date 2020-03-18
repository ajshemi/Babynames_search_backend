class CreateBabynames < ActiveRecord::Migration[6.0]
  def change
    create_table :babynames do |t|
      t.integer :year
      t.string :gender
      t.string :ethnicity
      t.string :first_name
      t.integer :count
      t.integer :rank

      t.timestamps
    end
  end
end
