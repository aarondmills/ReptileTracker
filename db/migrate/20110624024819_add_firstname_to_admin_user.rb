class AddFirstnameToAdminUser < ActiveRecord::Migration
  def self.up
    add_column :admin_users, :firstname, :string
    add_column :admin_users, :lastname, :string
    add_column :admin_users, :phone, :string
    add_column :admin_users, :twitter, :string
    add_column :admin_users, :facebook, :string
  end

  def self.down
    remove_column :admin_users, :facebook
    remove_column :admin_users, :twitter
    remove_column :admin_users, :phone
    remove_column :admin_users, :lastname
    remove_column :admin_users, :firstname
  end
end
