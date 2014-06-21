class CreateAcqereurrecherches < ActiveRecord::Migration
  def change
    create_table :acqereurrecherches do |t|
      t.references :acquereur, index: true
      t.string :type_de_bien
      t.integer :chambre

      t.timestamps
    end
  end
end
