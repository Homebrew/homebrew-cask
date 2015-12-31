module ExpectationsHashHelper
  shared_examples 'expectations hash' do |input_name, expectations|
    expectations.each do |input_value, expected_output|
      context "when #{input_name} is #{input_value.inspect}" do
        let(input_name.to_sym) { input_value }
        it { should == expected_output }
      end
    end
  end
end
