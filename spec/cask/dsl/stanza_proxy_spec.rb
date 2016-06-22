describe Hbc::DSL::StanzaProxy do
  let(:stanza_proxy) do
    described_class.new(Array) { %i[foo bar cake] }
  end

  subject { stanza_proxy }
  it { is_expected.to be_a_proxy }
  it { is_expected.to respond_to(:pop) }
  its(:pop) { is_expected.to eq(:cake) }
  its(:type) { is_expected.to eq(Array) }
  its(:to_s) { is_expected.to eq('[:foo, :bar, :cake]') }

  describe 'when initialized' do
    let(:initializing) do
      proc { |b| described_class.new(Array, &b) }
    end

    it 'does not evaluate the block' do
      expect(&initializing).not_to yield_control
    end
  end

  describe 'when receiving a message' do
    let(:receiving_a_message) do
      proc { |b| described_class.new(Array, &b).to_s }
    end

    it 'evaluates the block' do
      expect(&receiving_a_message).to yield_with_no_args
    end
  end
end
