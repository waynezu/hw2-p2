#File: ar_test.rb
require "active_record"
# Adapter for the SQLite3
ActiveRecord::Base::establish_connection(:adapter => "sqlite3", :database => "testdb.sqlite")
# Define database schema , and create database " people "
class CalendarTableScript < ActiveRecord::Migration
	def self.up
		create_table :Calendars do |t|
			t.string :event_name
			t.string :event_time
			t.string :event_finished
		end
	end
	def self.down
		drop_table :Calendars
	end
end

