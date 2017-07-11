class AddNewDataToMovies < ActiveRecord::Migration[5.0]
  def change
    change_table :movies do |t|
      t.string :studio
      t.date :release_date
      t.float :rating, default: 0.0
    end
  end
end
