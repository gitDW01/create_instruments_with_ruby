#!/usr/bin/env ruby

#Load the user defined parameters
if (ARGV.length < 1)
puts "To see every process on the system use -e"
else
####
#we need to add some more keys and process them here
####

pids = Dir.glob("/proc/[0-9]*")

puts "PID\tCMD"
puts "-" * 15

pids.each do |pid|
  cmd = File.read(pid + "/comm")
  pid = pid.scan(/\d+/).first

  puts "#{pid}\t#{cmd}"
end
end
