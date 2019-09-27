# frozen_string_literal: true

class AddSessionIdToDocument < ActiveRecord::Migration[6.0]
  def change
    add_column :documents, :session_id, :string
    add_index :documents, :session_id
  end
end
