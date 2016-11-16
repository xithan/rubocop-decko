# encoding: utf-8

module RuboCop
  module Cop
    module Decko
      # Checks that the lines of a view block don't exceed the allowed maximum
      # @example
      #   view :editor do |args|
      #      ...
      #   end
      class ViewLength < Cop
        include BlockLines

        def on_block(node)
          check_block_length node, only: :view
        end

        private
        def message(length, max_length)
          format('View has too many lines. [%d/%d]', length, max_length)
        end
      end
    end
  end
end
