class CreateBudgetposts < ActiveRecord::Migration
  def change
    create_table :budgetposts do |t|
    	t.string :nummer,		:null => false, :default => ""
    	t.string :omschrijving,	:null => false, :default => ""
    	t.string :last_edited_by

      t.timestamps
    end
  end
end
