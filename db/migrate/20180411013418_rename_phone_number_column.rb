class RenamePhoneNumberColumn < ActiveRecord::Migration[5.1]
  def change
    rename_column :restaurants, :phonenumber, :phone_number
  end
end
