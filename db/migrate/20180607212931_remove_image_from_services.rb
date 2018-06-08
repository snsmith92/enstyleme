class RemoveImageFromServices < ActiveRecord::Migration[5.0]
  def change
    remove_column :services, :image
  end
end
