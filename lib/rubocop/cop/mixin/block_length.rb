# encoding: utf-8

module RuboCop
  module Cop
    module BlockLength
      # Common functionality for checking length of a block.
      include CodeLength

      def check_code_length(node, body)
        length = code_length(body.loc.expression)
        return unless length > max_length

        add_offense(node, :expression, message(length, max_length)) do
          self.max = length
        end
      end

      private

      def code_length(node)
        lines = node.source.lines.to_a[1..-2] || []

        lines.count { |line| !irrelevant_line(line) }
      end
    end
  end
end