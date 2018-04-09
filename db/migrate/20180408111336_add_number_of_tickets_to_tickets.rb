class AddNumberOfTicketsToTickets < ActiveRecord::Migration[5.1]
  def change
    add_column :tickets, :number_of_tickets, :integer
  end
end
