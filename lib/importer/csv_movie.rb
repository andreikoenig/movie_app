module Importer
  class CsvMovie
    require 'csv'

    def self.movie_importer(file)
      ActiveRecord::Base.transaction do
       CSV.foreach(file, headers: true) do |row|
         row = row.to_hash
         title =row["DVD_Title"]
         date = row['Released'] ? row['Released'] : row['DVD_ReleaseDate']
         studio = row['Studio']
        #  price = row['Price']
        #  genre = row['Genre']
         Movie.create(title: title, release_date: Date.strptime(date,"%m/%d/%y"), studio: studio)
       end
     end
    end
  end
end
