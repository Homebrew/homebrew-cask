require 'spec_helper'

describe Hbc::Verify do
  let(:cask) { double('cask') }

  let(:verification_classes) do
    [
      applicable_verification_class,
      inapplicable_verification_class
    ]
  end

  let(:applicable_verification_class) do
    double('applicable_verification_class', :me? => true)
  end

  let(:inapplicable_verification_class) do
    double('inapplicable_verification_class', :me? => false)
  end

  before do
    allow(described_class).to receive(:verifications).
      and_return(verification_classes)
  end

  describe '.for_cask' do
    subject { described_class.for_cask(cask) }

    it 'checks applicability of each verification' do
      verification_classes.each do |verify_class|
        expect(verify_class).to receive(:me?).with(cask)
      end
      subject
    end

    it 'includes applicable verifications' do
      expect(subject).to include(applicable_verification_class)
    end

    it 'excludes inapplicable verifications' do
      expect(subject).to_not include(inapplicable_verification_class)
    end
  end

  describe '.all' do
    let(:downloaded_path) { double('downloaded_path') }
    let(:applicable_verification) { double('applicable_verification') }
    let(:inapplicable_verification) { double('inapplicable_verification') }

    subject { described_class.all(cask, downloaded_path) }

    before do
      allow(applicable_verification_class).to receive(:new).
        and_return(applicable_verification)
      allow(inapplicable_verification_class).to receive(:new).
        and_return(inapplicable_verification)
    end

    it 'runs only applicable verifications' do
      expect(applicable_verification).to receive(:verify)
      expect(inapplicable_verification).to_not receive(:verify)
      subject
    end
  end
end
