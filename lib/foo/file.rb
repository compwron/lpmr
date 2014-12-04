module PainMessageGenerator
  module CAMT54
    class File < OpenStruct
      include SAXMachine

      elements :Ntfctn, :as => :batches, :class => Batch
    end
  end
end
