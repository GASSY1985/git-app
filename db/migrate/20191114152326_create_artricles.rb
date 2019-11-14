class CreateArtricles < ActiveRecord::Migration[5.2]
  def change
    create_table :artricles do |t|
      t.string :title
      t.string :author
      t.text :text

      t.timestamps
    end
  end
end
