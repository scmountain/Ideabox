class CreateComments < ActiveRecord::Migration[5.0]
  def change
    create_table :comments do |t|
      t.string :text
      t.user :references
      t.photo :references

      t.timestamps
    end
  end
end
