class CreateAcquereurs < ActiveRecord::Migration
  def change
    create_table :acquereurs do |t|
      t.string :prenom
      t.string :nom
      t.string :telephone
      t.string :email

      t.timestamps
    end
  end
end
