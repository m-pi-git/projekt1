class AddReceiverIdToMessages < ActiveRecord::Migration[7.0]
  def change
    add_reference :messages, :receiver, foreign_key: { to_table: :users }
  end
end
