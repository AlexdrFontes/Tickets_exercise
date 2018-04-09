class RemoveColumnOnTickets < ActiveRecord::Migration[5.1]
  def change
    remove_column :tickets, :number_of_tickets_available
    add_column :events, :number_of_tickets_available, :integer
  end
end
