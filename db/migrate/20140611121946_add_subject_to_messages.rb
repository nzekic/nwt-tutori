class AddSubjectToMessages < ActiveRecord::Migration
  def change
    add_column :messages, :subject, :text
  end
end
