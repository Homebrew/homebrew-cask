require "spec_helper"

describe Hbc::Cask do
  let(:cask) { described_class.new("versioned-cask") }

  context "when multiple versions are installed" do
    describe "#versions" do
      context "and there are duplicate versions" do
        it "uses the last unique version" do
          allow(cask).to receive(:timestamped_versions).and_return([
                                                                     ["1.2.2", "0999"],
                                                                     ["1.2.3", "1000"],
                                                                     ["1.2.2", "1001"],
                                                                   ])

          expect(cask).to receive(:timestamped_versions)
          expect(cask.versions).to eq([
                                        "1.2.3",
                                        "1.2.2",
                                      ])
        end
      end
    end
  end
end
