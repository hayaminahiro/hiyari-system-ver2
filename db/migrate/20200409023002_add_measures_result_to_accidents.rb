class AddMeasuresResultToAccidents < ActiveRecord::Migration[5.2]
  def change
    add_column :accidents, :measures_result, :integer
  end
end
