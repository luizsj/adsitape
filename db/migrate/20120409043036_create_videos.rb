class CreateVideos < ActiveRecord::Migration
  def change
    create_table :videos do |t|
      t.string :arquivo
      t.integer :tamanho

      t.timestamps
    end
  end
end
