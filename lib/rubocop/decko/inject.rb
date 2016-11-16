# encoding: utf-8

require 'yaml'

module RuboCop
  module Decko
    # Because RuboCop doesn't yet support plugins, we have to monkey patch in a
    # bit of our configuration.
    module Inject
      def self.defaults!
        path = CONFIG_DEFAULT.to_s
        hash = ConfigLoader.send(:load_yaml_configuration, path)
        config = Config.new(hash, path)
        puts "configuration from #{path}" if ConfigLoader.debug?
        config = ConfigLoader.merge_with_default(config, path)
        ConfigLoader.instance_variable_set(:@default_configuration, config)
      end
    end

    # module Inject
    #
    #   DEFAULT_FILE = File.expand_path(
    #       '../../../../config/default.yml', __FILE__
    #   )
    #
    #   def self.defaults!
    #     hash = YAML.load_file(DEFAULT_FILE)
    #     puts "configuration from #{DEFAULT_FILE}" if ConfigLoader.debug?
    #     config = ConfigLoader.merge_with_default(hash, DEFAULT_FILE)
    #
    #     ConfigLoader.instance_variable_set(:@default_configuration, config)
    #   end
    # end
  end
end