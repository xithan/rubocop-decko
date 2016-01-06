# encoding: utf-8

require 'rubocop'

require 'rubocop/decko/version'
require 'rubocop/decko/inject'

RuboCop::Decko::Inject.defaults!

require 'rubocop/cop/mixin/block_length'

# cops
require 'rubocop/cop/decko/view_length'
require 'rubocop/cop/decko/event_length'
