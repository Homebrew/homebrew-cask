require 'test_helper'

describe "Casks" do
  Hbc.all.reject {|c| c.is_a?(Hbc::TestCask) }.each do |cask|
    describe "#{cask}" do
      it "passes audit" do
        audit = Hbc::Audit.new(cask)
        audit.run!
        audit.errors.must_equal [], "[#{cask}] Cask audit must be error free"
        audit.warnings.must_equal [], "[#{cask}] Cask audit must be warning free"
      end
    end
  end
end
