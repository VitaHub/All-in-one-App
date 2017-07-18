class AddAudioToSongs < ActiveRecord::Migration[5.1]
  def change
    add_column :songs, :audio, :string, null: false
  end
end
