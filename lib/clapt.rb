#!/usr/bin/env ruby

Dir[File.dirname(__FILE__) + '/clapt/*.rb'].each { |file| require file }

if ARGV.length != 1
  puts 'Usage: clapt <directory>'
  exit 1
end

main = Clapt::ClaptMain.new(
  test_discoverer: Clapt::TestDiscoverer.new,
  test_runner: Clapt::TestRunner.new,
  result_writer: Clapt::ResultWriter.new,
  directory: ARGV[0]
)
main.run
