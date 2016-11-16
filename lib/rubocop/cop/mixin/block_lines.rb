# encoding: utf-8

module RuboCop
  module Cop
    module BlockLines
      # Common functionality for checking length of a block.

      include TooManyLines

      def check_block_length(node, opts={})
        method, args, body = *node
        require 'pry'
        _receiver, method_name, _args = *method
        return if opts[:only] && !Array(opts[:only]).include?(method_name)
        return if opts[:except] && Array(opts[:except]).include?(method_name)
        check_code_length node
      end
    end
  end
end