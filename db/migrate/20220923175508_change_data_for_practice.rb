class ChangeDataForPractice < ActiveRecord::Migration[7.0]
  def change
    rename_column :practices, :adresse, :adress
  end
end
