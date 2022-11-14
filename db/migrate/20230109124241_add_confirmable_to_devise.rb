
class AddConfirmableToDevise < ActiveRecord::Migration[7.0]
 # Note: You can't use change, as User.update_all will fail in the down migration
  def up
    add_column :users, :confirmation_token, :string