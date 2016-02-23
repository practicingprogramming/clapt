#!/usr/bin/env ruby

Dir[File.dirname(__FILE__) + '/clapt/*.rb'].each { |file| require file }

puts 'Hello Clapt'
