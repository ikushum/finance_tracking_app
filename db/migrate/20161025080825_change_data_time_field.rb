class ChangeDataTimeField < ActiveRecord::Migration
  def change
    change_column :finances, :created_at, :date
  end
end
