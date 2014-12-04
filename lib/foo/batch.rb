module PainMessageGenerator
  module CAMT54
    class Batch
      include SAXMachine

      elements :Ntry, :as => :entries, :class => Entry
    end
  end
end
