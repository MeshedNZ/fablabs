class AddImageDragonflyToDocuments < ActiveRecord::Migration
  def change
    add_column :documents, :image_uid, :string
    add_column :documents, :image_name, :string
  end
end
