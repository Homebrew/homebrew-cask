require 'spec_helper'

describe Hbc::DSL::Version do
  include ExpectationsHashHelper

  let(:version) { described_class.new(raw_version) }

  shared_examples 'version equality' do
    let(:raw_version) { '1.2.3' }

    context 'when other is nil' do
      let(:other) { nil }
      it { should == false }
    end

    context "when other is a String" do
      context "when other == self.raw_version" do
        let(:other) { '1.2.3' }
        it { should == true }
      end

      context "when other != self.raw_version" do
        let(:other) { '1.2.3.4' }
        it { should == false }
      end
    end

    context "when other is a #{described_class}" do
      context "when other.raw_version == self.raw_version" do
        let(:other) { described_class.new('1.2.3') }
        it { should == true }
      end

      context "when other.raw_version != self.raw_version" do
        let(:other) { described_class.new('1.2.3.4') }
        it { should == false }
      end
    end
  end

  describe '#==' do
    subject { version == other }
    include_examples 'version equality'
  end

  describe '#eql?' do
    subject { version.eql?(other) }
    include_examples 'version equality'
  end

  shared_examples 'version expectations hash' do |method, hash|
    subject { version.send(method) }
    include_examples 'expectations hash', :raw_version,
                     { :latest  => 'latest',
                       'latest' => 'latest',
                       ''       => '',
                       nil      => ''
                     }.merge(hash)
  end


  describe '#latest?' do
    include_examples 'version expectations hash', :latest?, {
      :latest  => true,
      'latest' => true,
      ''       => false,
      nil      => false,
      '1.2.3'  => false
    }
  end

  describe 'string manipulation helpers' do
    describe '#major' do
      include_examples 'version expectations hash', :major, {
        '1'         => '1',
        '1.2'       => '1',
        '1.2.3'     => '1',
        '1.2.3_4-5' => '1'
      }
    end

    describe '#minor' do
      include_examples 'version expectations hash', :minor, {
        '1'         => '',
        '1.2'       => '2',
        '1.2.3'     => '2',
        '1.2.3_4-5' => '2'
      }
    end

    describe '#patch' do
      include_examples 'version expectations hash', :patch, {
        '1'         => '',
        '1.2'       => '',
        '1.2.3'     => '3',
        '1.2.3_4-5' => '3'
      }
    end

    describe '#major_minor' do
      include_examples 'version expectations hash', :major_minor, {
        '1'         => '1',
        '1.2'       => '1.2',
        '1.2.3'     => '1.2',
        '1.2.3_4-5' => '1.2'
      }
    end

    describe '#major_minor_patch' do
      include_examples 'version expectations hash', :major_minor_patch, {
        '1'         => '1',
        '1.2'       => '1.2',
        '1.2.3'     => '1.2.3',
        '1.2.3_4-5' => '1.2.3'
      }
    end

    describe '#before_comma' do
      include_examples 'version expectations hash', :before_comma, {
        '1.2.3'     => '1.2.3',
        '1.2.3,'    => '1.2.3',
        ',abc'      => '',
        '1.2.3,abc' => '1.2.3'
      }
    end

    describe '#after_comma' do
      include_examples 'version expectations hash', :after_comma, {
        '1.2.3'     => '',
        '1.2.3,'    => '',
        ',abc'      => 'abc',
        '1.2.3,abc' => 'abc'
      }
    end


    describe '#before_colon' do
      include_examples 'version expectations hash', :before_colon, {
        '1.2.3'     => '1.2.3',
        '1.2.3:'    => '1.2.3',
        ':abc'      => '',
        '1.2.3:abc' => '1.2.3'
      }
    end

    describe '#after_colon' do
      include_examples 'version expectations hash', :after_colon, {
        '1.2.3'     => '',
        '1.2.3:'    => '',
        ':abc'      => 'abc',
        '1.2.3:abc' => 'abc'
      }
    end

    describe '#dots_to_hyphens' do
      include_examples 'version expectations hash', :dots_to_hyphens, {
        '1.2.3_4-5' => '1-2-3_4-5'
      }
    end

    describe '#dots_to_underscores' do
      include_examples 'version expectations hash', :dots_to_underscores, {
        '1.2.3_4-5' => '1_2_3_4-5'
      }
    end

    describe '#dots_to_slashes' do
      include_examples 'version expectations hash', :dots_to_slashes, {
        '1.2.3_4-5' => '1/2/3_4-5'
      }
    end

    describe '#hyphens_to_dots' do
      include_examples 'version expectations hash', :hyphens_to_dots, {
        '1.2.3_4-5' => '1.2.3_4.5'
      }
    end

    describe '#hyphens_to_underscores' do
      include_examples 'version expectations hash', :hyphens_to_underscores, {
        '1.2.3_4-5' => '1.2.3_4_5'
      }
    end

    describe '#hyphens_to_slashes' do
      include_examples 'version expectations hash', :hyphens_to_slashes, {
        '1.2.3_4-5' => '1.2.3_4/5'
      }
    end

    describe '#underscores_to_dots' do
      include_examples 'version expectations hash', :underscores_to_dots, {
        '1.2.3_4-5' => '1.2.3.4-5'
      }
    end

    describe '#underscores_to_hyphens' do
      include_examples 'version expectations hash', :underscores_to_hyphens, {
        '1.2.3_4-5' => '1.2.3-4-5'
      }
    end

    describe '#underscores_to_slashes' do
      include_examples 'version expectations hash', :underscores_to_slashes, {
        '1.2.3_4-5' => '1.2.3/4-5'
      }
    end

    describe '#slashes_to_dots' do
      include_examples 'version expectations hash', :slashes_to_dots, {
        '1.2.3/abc' => '1.2.3.abc'
      }
    end

    describe '#slashes_to_hyphens' do
      include_examples 'version expectations hash', :slashes_to_hyphens, {
        '1.2.3/abc' => '1.2.3-abc'
      }
    end

    describe '#slashes_to_underscores' do
      include_examples 'version expectations hash', :slashes_to_underscores, {
        '1.2.3/abc' => '1.2.3_abc'
      }
    end

    describe '#no_dots' do
      include_examples 'version expectations hash', :no_dots, {
        '1.2.3_4-5' => '123_4-5'
      }
    end

    describe '#no_hyphens' do
      include_examples 'version expectations hash', :no_hyphens, {
        '1.2.3_4-5' => '1.2.3_45'
      }
    end

    describe '#no_underscores' do
      include_examples 'version expectations hash', :no_underscores, {
        '1.2.3_4-5' => '1.2.34-5'
      }
    end

    describe '#no_slashes' do
      include_examples 'version expectations hash', :no_slashes, {
        '1.2.3/abc' => '1.2.3abc'
      }
    end

    describe '#no_dividers' do
      include_examples 'version expectations hash', :no_dividers, {
        '1.2.3_4-5' => '12345'
      }
    end
  end
end
