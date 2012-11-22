class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :name
      t.string :description
      t.integer :donor_id
      t.integer :winning_bidder_id
      t.decimal :minimum_bid
      t.decimal :winning_bid

      t.timestamps
    end
  end
end
