class AddUserRefToClaims < ActiveRecord::Migration[7.2]
  def change
    add_reference :claims, :user, null: true, foreign_key: true
  end
end
