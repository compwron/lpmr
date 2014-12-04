require "spec_helper"

describe PainMessageGenerator::CAMT54::File do
  describe "self.parse" do
    it "parses the PayPal camt054 format" do
      xml = File.read(
        File.expand_path("../../../resources/sample.xml", __FILE__)
      )

      file = PainMessageGenerator::CAMT54::File.parse(xml)
      file.batches.count.should == 1
      file.batches.first.entries.count.should == 1

      entry = file.batches.first.entries.first

      entry.amount.should == Money.new(2_31, "GBP")
      entry.transfer_id.should == "c8fckg"
      entry.bic.should == "402327"
      entry.sort_code.should == "700709"
      entry.error_code.should == "PPT17"
      entry.iban.should be_blank
      entry.bban.should == "MIDL00000000000000"
    end
  end
end
