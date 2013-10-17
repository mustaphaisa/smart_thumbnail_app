# This reads the file that contains all the crop regions and
# saves them into a crop_regions model
begin
	CropRegion.delete_all
    file = File.new("ALGOpoints.txt", "r")
    while (line = file.gets)
    	params = line.split(" ")
        region = CropRegion.create( :name => params[0], 
        							:xcord => params[1].to_i, 
        							:ycord => params[2].to_i, 
        							:width => params[3].to_i,
        							:height => params[4].to_i )
    end
    file.close
    @links = CropRegion.all
	@links.each { |link| p link }
rescue => err
    puts "Exception: #{err}"
end