class RenameForms < ActiveRecord::Migration[6.0]
  def change
    rename_column :forms, :meil, :mail
  end
end
