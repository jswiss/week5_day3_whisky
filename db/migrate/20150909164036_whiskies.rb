class Whiskies < ActiveRecord::Migration
  def change
  	create_table :whiskies do |t|
	  	t.string :name
	  	t.string :img_url
	  	t.string :tasting_notes
	  end
  end
end
