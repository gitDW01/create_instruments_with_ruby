#!/usr/bin/env ruby

if (ARGV.length < 1)
  puts "To see every process on the system use -e or -A"
  exit
end

#Load the user defined parametres
if ("#{ARGV[0]}" == "-e") || ("#{ARGV[0]}" == "-A")
  pids = Dir.glob("/proc/[0-9]*")

  puts "PID\tCMD"
  puts "-" * 15
  
  pids.each do |pid|
    cmd = File.read(pid + "/comm")
    pid = pid.scan(/\d+/).first

    puts "#{pid}\t#{cmd}"
  end
else
puts "To see every process on the system use -e or -A"

end

