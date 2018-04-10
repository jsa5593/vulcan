class CreateSrgs < ActiveRecord::Migration[5.1]
  def change
    create_table :srgs do |t|
      t.string :title
      t.string :description
      t.string :publisher
      t.string :published

      t.timestamps
    end
  end
end
