class AddActivitySceneToAccidents < ActiveRecord::Migration[5.2]
  def change
    add_column :accidents, :activity_scene, :integer
  end
end
