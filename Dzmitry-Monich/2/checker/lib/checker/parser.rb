require 'csv'

module Checker
  class Parser
    class << self
      def parcers
        { 'csv' => ->(content) { CSV.read(content).flatten } }
      end

      def parse(filepath)
        ext_type = File.extname(filepath)[1..-1]
        validate(ext_type)

        parcers[ext_type].call(filepath)
      end

      private

      def validate(type)
        raise 'no such a parser' unless parcers.key?(type)
      end
    end
  end
end
