class DeleteItemsFromLineItem < ActiveRecord::Migration[6.0]
  def up
    execute("delete from line_items")
  end
  def down
  end
end
