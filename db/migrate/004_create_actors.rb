class CreateActors < ActiveRecord::Migration[6.1]
  def change
    # Your code here
    create_tables: actors do |t|
      t.string :first_name
      t.integer :last_name
  end
end
