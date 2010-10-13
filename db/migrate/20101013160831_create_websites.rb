class CreateWebsites < ActiveRecord::Migration
  def self.up
    create_table :websites do |t|
      t.string :domain
      t.datetime :first_deployed
      t.datetime :last_deployed
      t.timestamps
    end
  end

  def self.down
    drop_table :websites
  end
end
