
module RuboCop
  module Cop
    module Metrics
      # monkeypatch rubocop's block length cop so that it ignores format
      # blocks.
      # It doesn't work if I use the same path ("cop/metrics/block_length")
      # for this.
      class BlockLength < Cop
        include BlockLines

        def on_block(node)
          check_block_length node, except: [:format, :view, :event]
        end
      end
    end
  end
end
