class CreateResponses < ActiveRecord::Migration
  def change
    create_table :responses do |t|
      t.integer :taken_survey_id
      t.integer :option_id

      t.timestamps
    end
  end
end
