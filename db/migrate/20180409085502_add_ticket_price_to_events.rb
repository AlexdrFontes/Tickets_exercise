class AddTicketPriceToEvents < ActiveRecord::Migration[5.1]
  def change
    add_column :events, :ticket_price, :integer
  end
end
