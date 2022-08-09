class AddCreditToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :credit_left, :integer
  end
end
