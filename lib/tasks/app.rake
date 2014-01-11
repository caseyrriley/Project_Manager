namespace :app do

	task :ensure_development_environment=> :environment do
		if Rails.env.production?
			raise"\n I'm sorry, Dave, I can't do that.\n(You're asking me to drop your production database.)"
		end
	end


desc "Reset"
task :reset => [:ensure_development_environment,"db:drop","db:create","db:migrate","db:seed","app:populate"]

desc "Populate the database with development data"
task :populate => :environment do
	[
		{:first_name=> "Casey", :last_name=> "Riley"},
		{:first_name=> "John", :last_name=> "Riley"},
		{:first_name=> "Doe", :last_name=> "Jane"},
		].each do |attributes|
			Person.find_or_create_by_first_name_and_last_name(attributes)
		end
	end
end

