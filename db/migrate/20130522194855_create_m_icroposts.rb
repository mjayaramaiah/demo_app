class CreateMIcroposts < ActiveRecord::Migration
  def change
    create_table :m_icroposts do |t|
      t.string :content
      t.integer :user_id

      t.timestamps
    end
  end
end
