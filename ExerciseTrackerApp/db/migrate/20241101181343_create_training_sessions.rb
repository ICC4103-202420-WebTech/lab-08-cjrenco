class CreateTrainingSessions < ActiveRecord::Migration[7.2]
  def change
    create_table :training_sessions do |t|
      t.references :user, null: false, foreign_key: true
      t.date :date
      t.string :activity
      t.integer :duration
      t.text :description

      t.timestamps
    end
  end
end
