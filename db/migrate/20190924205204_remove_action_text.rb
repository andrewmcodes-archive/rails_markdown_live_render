class RemoveActionText < ActiveRecord::Migration[6.0]
  def change
    drop_table :action_text_rich_texts
    drop_table :active_storage_attachments
    drop_table :active_storage_blobs
  end
end
