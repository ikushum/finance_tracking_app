class CreateFinances < ActiveRecord::Migration
  def change
    create_table :finances do |t|
    t.datetime  "created_at",  null: false
    t.string     "title"
    t.integer    "amount"
    t.datetime "updated_at",  null: false
    t.timestamps null: false
    end
  end
end
