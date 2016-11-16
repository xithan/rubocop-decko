# encoding: utf-8

require 'pathname'
require 'yaml'

require 'rubocop'

require 'rubocop/decko'
require 'rubocop/decko/version'
require 'rubocop/decko/inject'

RuboCop::Decko::Inject.defaults!

require 'rubocop/cop/mixin/block_lines'

# cops
require 'rubocop/cop/decko/view_length'
require 'rubocop/cop/decko/event_length'
require 'rubocop/cop/decko/block_length'
