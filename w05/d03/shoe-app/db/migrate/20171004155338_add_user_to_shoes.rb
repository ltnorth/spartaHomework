class AddUserToShoes < ActiveRecord::Migration[5.1]
  def change
  	add_reference :shoes, :user, index: true
  end
end
