namespace :db do

  desc "load data from csv"
  task :load_data  => :environment do
    require 'csv'
    
    data_topic = DataTopic.create(:name => "Internet users (per 100 people)")
   
    CSV.foreach("lib/tasks/data.csv", :headers => true) do |row|
      data_point_values = { :data_topic => data_topic,
                            :country => Country.create( :name => row[0], :code => row[1])
                          }
                          
        puts data_point_values[:country].name

        (1990..2010).each do |year|
          puts "\t\t#{year}"
          next if row[2 + year - 1990].nil? or row[2 + year - 1990].empty?
          DataPoint.create({ :year => year, :value => row[2 + year - 1990] }.merge(data_point_values))
        end
    end
  end
end