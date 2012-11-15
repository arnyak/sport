class CreateFootballers < ActiveRecord::Migration
  def change
    create_table :footballers do |t|
      t.string :first_name
      t.string :last_name
      t.date :born_at
      t.text :city_born_in
      t.text :country_born_in

      t.timestamps
    end
  end
end
