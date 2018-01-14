class CreateApplicants < ActiveRecord::Migration[5.1]
  def change
    create_table :applicants do |t|
      t.string :name
      t.string :email
      t.integer :telephone
      t.string :position
      t.text :bio

      t.timestamps
    end
  end
end
