class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :title
      t.string :first_date
      t.string :final_date
      t.text :sch_memo

      t.timestamps
      
    end
  end
end
