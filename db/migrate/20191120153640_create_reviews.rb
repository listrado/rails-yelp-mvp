class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table   :reviews do |t|
      t.references :restaurant, foreign_key: true
      t.integer    :rating
      t.string     :content

      t.timestamps
    end
  end
end
