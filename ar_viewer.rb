require_relative "ar_test"
# Create the table that will be used in the database

class Calendar < ActiveRecord::Base
end

#class CalendarView
	CalendarTableScript.up
	puts "Please input the function!"
	def create(name,time)
		Calendar.new(event_name: name, event_time: time.to_s, event_finished: "false").save
	end	
	def check(name)
		@event=Calendar.find_by_event_name(name) #Calendar.where(["event_name = ?", name])
		@event.update_attribute(:event_finished, "true")	
	end
	def list_all
		puts "NAME          TIME                  FINISHED?"
		events=Calendar.all
		events.each do |event|
			puts"#{event.event_name},#{event.event_time},#{event.event_finished}"
		end
		puts "Listing events done!"
	end
#end
	def exits
		CalendarTableScript.down
		exit
	end

#sc=Calendar.new
