class AddSentToMessages < ActiveRecord::Migration[7.0]
  def change
    add_column :messages, :sent, :boolean, default: false
  end
end
