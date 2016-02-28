module Clapt
  # Test Discoverer.
  class TestDiscoverer
    def discover(directory)
      puts "Discovering tests in directory: #{directory}"
      test_files = Dir.glob("#{directory}/**/*_clapt.rb")
      test_files.each do |file|
        Kernel.eval(File.read(file))
      end
    end
  end
end
