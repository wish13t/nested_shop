class CreateProductVariants < ActiveRecord::Migration[7.0]
  def change
    create_table :product_variants do |t|
      t.string :color
      t.string :size
      t.references :product, null: false, foreign_key: true

      t.timestamps
    end
  end
end
