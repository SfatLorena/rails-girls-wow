class CreateDestinatiiTuristices < ActiveRecord::Migration
  def change
    create_table :destinatii_turistices do |t|
      t.string :oras
      t.string :obiectiv
      t.text :descriete

      t.timestamps
    end
  end
end
