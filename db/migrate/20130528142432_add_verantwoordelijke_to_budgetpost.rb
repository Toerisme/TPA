class AddVerantwoordelijkeToBudgetpost < ActiveRecord::Migration
  def change
  	add_column :budgetposts, :user_id, :integer
  	add_index :budgetposts, :user_id
  end
end
