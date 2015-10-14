class CreatePolis < ActiveRecord::Migration
  def change
    create_table :polis do |t|
      t.string :first_name
      t.string :last_name
      t.string :home_state
      t.string :party

      t.timestamps null: false
    end
  end
end
