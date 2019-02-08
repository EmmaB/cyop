class AddLinkToAnswer < ActiveRecord::Migration[5.1]
  def change
    add_column :answers, :link, :text
  end
end
