# encoding: utf-8

module RuboCop
  module Cop
    module Decko
      # Checks that the lines of a view block don't exceed the allowed maximum
      # @example
      #   view :editor do |args|
      #      ...
      #   end
      class EventLength < Cop
        include BlockLength

        def on_block(node)
          method, args, body = *node
          _receiver, method_name, _args = *method
          return unless method_name == :event
          check_code_length(node, body)
        end

        private
        def message(length, max_length)
          format('Event has too many lines. [%d/%d]', length, max_length)
        end
      end
    end
  end
end