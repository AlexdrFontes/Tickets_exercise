class CreateTickets < ActiveRecord::Migration[5.1]
  def change
    create_table :tickets do |t|
      t.integer :number_of_tickets_available
      t.string :email

      t.timestamps
    end
  end
end
