module PainMessageGenerator
  module CAMT54
    class DebitorAccount
      include SAXMachine

      element :Id, :as => :bban
      element :IBAN, :as => :iban
    end

    class Debitor
      include SAXMachine

      element :Id, :as => :sort_code
    end

    class EntryDetails
      include SAXMachine

      element :DbtrAcct, :as => :debitor_account, :class => DebitorAccount
      element :Dbtr, :as => :debitor, :class => Debitor
      element :InstrId, :as => :transfer_id
      element :BIC, :as => :bic
      element :Amt, :as => :amount, :class => Float
      element :Amt, :as => :currency_iso_code, :value => :Ccy
      element :Prtry, :as => :error_code

      delegate :bban, :to => :debitor_account
      delegate :sort_code, :to => :debitor
    end

    class Entry
      include SAXMachine

      element :IBAN, :as => :iban
      element :NtryDtls, :as => :details, :class => EntryDetails

      delegate :transfer_id, :bic, :bban, :sort_code, :error_code, :to => :details

      def amount
        Money.new(details.amount * 100, details.currency_iso_code)
      end
    end
  end
end
