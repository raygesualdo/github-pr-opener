#!/usr/bin/env ruby

ARGF.each do |line|
    puts line 
    if line =~ /pull\/new/
      matches = /http.*/.match(line)
      system("open #{matches[0]}")
    end
end
