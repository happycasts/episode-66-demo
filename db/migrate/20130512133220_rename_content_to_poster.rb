class RenameContentToPoster < ActiveRecord::Migration
  def up
    rename_column :videos, :content, :poster
  end

  def down
  end
end
