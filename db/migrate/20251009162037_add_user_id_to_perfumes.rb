class AddUserIdToPerfumes < ActiveRecord::Migration[7.2]
  def change
    add_column :perfumes, :user_id, :integer
  end
end
