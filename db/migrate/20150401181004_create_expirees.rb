class CreateExpirees < ActiveRecord::Migration
  def change
    create_table :expirees do |t|
      t.string :name
      t.int :score

      t.timestamps
    end
  end
end
