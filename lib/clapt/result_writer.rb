module Clapt
  # Result writer.
  class ResultWriter
    def initialize
    end

    def update(test_result)
      if test_result.success?
        Kernel.puts "Test succeeded: #{test_result.test.name}"
      else
        Kernel.puts "Test failed: #{test_result.test.name}"
      end
    end

    def on_all_tests_finished
      # TODO: print stats
    end
  end
end
