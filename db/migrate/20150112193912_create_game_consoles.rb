class CreateGameConsoles < ActiveRecord::Migration
  def change
    create_table :game_consoles do |t|
      t.string :name, null: false
      t.string :manufacturer, null: false
      t.integer :year, null: false

      t.timestamps null: false
    end

    add_index :game_consoles, [:name, :manufacturer], unique: true
  end
end
