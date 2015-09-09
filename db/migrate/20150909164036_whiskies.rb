class Whiskies < ActiveRecord::Migration
  def change
  	name: name
  	image_url: image_url
  	tasting_notes: tasting_notes
  end
end
