class CreateExercises < ActiveRecord::Migration
  def change
    create_table :exercises do |t|
      t.string :name
      t.integer :sets
      t.integer :reps
      t.integer :time
      t.integer :rest
      t.string :side
      t.string :description
      t.string :text
      t.string :area
      t.string :equipment
      t.string :type
      t.string :string
      t.text :best_for
      t.string :eb_link
      t.string :eb_article
      t.text :abstract
      t.string :video_link
      t.string :image1
      t.string :string
      t.string :image2
      t.string :image3
      t.string :image4
      t.integer :created_by

      t.timestamps
    end
  end
end
