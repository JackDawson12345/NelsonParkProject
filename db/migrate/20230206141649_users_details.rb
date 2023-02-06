class UsersDetails < ActiveRecord::Migration[7.0]
  def change

    add_column :users, :user_id, :string
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :is_subscriber, :boolean
    add_column :users, :organisation_role, :string

  end
end
