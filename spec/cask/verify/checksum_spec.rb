require 'spec_helper'

describe Hbc::Verify::Checksum do
  include Sha256Helper

  let(:cask) { double('cask') }
  let(:downloaded_path) { double('downloaded_path') }
  let(:verification) { described_class.new(cask, downloaded_path) }

  before do
    allow(cask).to receive(:sha256).and_return(sha256)
  end

  around do |example|
    shutup { example.run }
  end

  describe '.me?' do
    subject { described_class.me?(cask) }

    context 'sha256 is :no_check' do
      let(:sha256) { :no_check }

      it { should == false }
    end

    context 'sha256 is nil' do
      let(:sha256) { nil }

      it { should == true }
    end

    context 'sha256 is empty' do
      let(:sha256) { '' }

      it { should == true }
    end

    context 'sha256 is a valid shasum' do
      let(:sha256) { random_sha256 }

      it { should == true }
    end
  end

  describe '#verify' do
    subject { verification.verify }

    let(:computed) { random_sha256 }

    before do
      allow(verification).to receive(:computed).and_return(computed)
    end

    context 'sha256 matches computed' do
      let(:sha256) { computed }

      it 'does not raise an error' do
        expect { subject }.to_not raise_error
      end
    end

    context 'sha256 is :no_check' do
      let(:sha256) { :no_check }

      it 'does not raise an error' do
        expect { subject }.to_not raise_error
      end
    end

    context 'sha256 does not match computed' do
      let(:sha256) { random_sha256 }

      it 'raises an error' do
        expect { subject }.to raise_error(Hbc::CaskSha256MismatchError)
      end
    end

    context 'sha256 is nil' do
      let(:sha256) { nil }

      it 'raises an error' do
        expect { subject }.to raise_error(Hbc::CaskSha256MissingError)
      end
    end

    context 'sha256 is empty' do
      let(:sha256) { '' }

      it 'raises an error' do
        expect { subject }.to raise_error(Hbc::CaskSha256MissingError)
      end
    end
  end
end
