class CreateComments < ActiveRecord::Migration[6.0]
  def change
    create_table :comments do |t|
      t.t.bigint :post_id
      t.t.bigint :user_id
      t.string :contentauthor

      t.timestamps
    end
  end
end
