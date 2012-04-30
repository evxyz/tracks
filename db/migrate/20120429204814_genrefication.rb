class Genrefication < ActiveRecord::Migration
  def change
  create_table :genres do |g|
	g.string :genre
	g.string :sub_genre
	g.text 	 :notes
	
	g.timestamps
	end  
  end
 end


