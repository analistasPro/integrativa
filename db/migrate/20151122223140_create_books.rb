class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :title
      t.string :author
      t.integer :pages
      t.string :publisher
      t.string :language
      t.integer :year
      t.text :description
      t.integer :internetprice
      t.integer :normalprice
      t.references :category, index: true
      t.string :kind
      t.string :section

      t.timestamps
    end
  end
end
