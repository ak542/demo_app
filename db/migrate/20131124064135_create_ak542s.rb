class CreateAk542s < ActiveRecord::Migration
  def change
    create_table :ak542s do |t|
      t.string :name
      t.string :email

      t.timestamps
    end
  end
end
