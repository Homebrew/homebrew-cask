require 'spec_helper'

describe Hbc::CLI::Style do
  let(:args) { [] }
  let(:cli) { described_class.new(args) }

  around do |example|
    shutup { example.run }
  end

  describe '.run' do
    subject { described_class.run(args) }

    before do
      allow(described_class).to receive(:new).and_return(cli)
      allow(cli).to receive(:run).and_return(retval)
    end

    context 'when rubocop succeeds' do
      let(:retval) { true }

      it 'exits successfully' do
        subject
      end
    end

    context 'when rubocop fails' do
      let(:retval) { false }

      it 'raises an exception' do
        expect { subject }.to raise_error(Hbc::CaskError)
      end
    end
  end

  describe '#run' do
    subject { cli.run }

    before do
      allow(cli).to receive_messages(install_rubocop: nil,
                                     system: nil,
                                     rubocop_args: nil,
                                     cask_paths: nil)
      allow($?).to receive(:success?).and_return(success)
    end

    context 'when rubocop succeeds' do
      let(:success) { true }
      it { is_expected.to be_truthy }
    end

    context 'when rubocop fails' do
      let(:success) { false }
      it { is_expected.to be_falsey }
    end
  end

  describe '#install_rubocop' do
    subject { cli.install_rubocop }

    shared_examples 'raises error with message' do |msg|
      it 'raises an error with an informative message' do
        expect { subject }.to raise_error(Hbc::CaskError, msg)
      end
    end

    shared_examples 'executable availability' do
      before { allow(Hbc::Utils).to receive(:which).and_return(which_retval) }

      context 'when rubocop is available on the PATH' do
        let(:which_retval) { true }

        it 'exits successfully' do
          subject
        end
      end

      context 'when rubocop is not available on the PATH' do
        let(:which_retval) { false }
        include_examples 'raises error with message', /couldn't find 'rubocop'/
      end
    end

    let(:fake_gem_specification_class) { Class.new }
    let(:fake_gem_install_cmd_class) { Class.new }
    let(:fake_system_exit_exception_class) { Class.new(StandardError) }
    let(:fake_install_cmd) { double() }
    let(:fake_system_exit_exception) { fake_system_exit_exception_class.new }

    before do
      stub_const("Gem::Specification", fake_gem_specification_class)
      stub_const("Gem::Commands::InstallCommand", fake_gem_install_cmd_class)
      stub_const("Gem::SystemExitException", fake_system_exit_exception_class)
      allow(fake_gem_specification_class).to receive(:find_all_by_name).and_return(*returned_specs)
    end

    context 'when rubocop and rubocop-cask are already installed' do
      let(:returned_specs) { [['rubocop'], ['rubocop-cask']] }
      include_examples 'executable availability'
    end

    context 'when rubocop and rubocop-cask are not already installed' do
      let(:returned_specs) { [[]] }

      before do
        allow(Hbc::Utils).to receive(:require)
        allow(fake_gem_install_cmd_class).to receive(:new).and_return(fake_install_cmd)
        allow(fake_install_cmd).to receive(:handle_options)
        allow(fake_install_cmd).to receive(:execute).and_raise(fake_system_exit_exception)
        allow(fake_system_exit_exception).to receive(:exit_code).and_return(install_exit_code)
      end

      context 'when installation succeeds' do
        let(:install_exit_code) { 0 }
        include_examples 'executable availability'
      end

      context 'when installation fails' do
        let(:install_exit_code) { 1 }
        include_examples 'raises error with message', /Failed to install\/update/
      end
    end
  end

  describe '#cask_paths' do
    subject { cli.cask_paths }

    before { allow(cli).to receive(:cask_tokens).and_return(tokens) }

    context 'when no cask tokens are given' do
      let(:tokens) { [] }
      before { allow(Hbc).to receive(:all_tapped_cask_dirs).and_return(['Casks', 'MoreCasks']) }
      it { is_expected.to eq(['Casks', 'MoreCasks']) }
    end

    context 'when at least one cask token is a path that exists' do
      let(:tokens) { ['adium', 'Casks/dropbox.rb'] }
      before { allow(File).to receive(:exist?).and_return(false, true) }

      it 'treats all tokens as paths' do
        expect(subject).to eq(tokens)
      end
    end

    context 'when no cask tokens are paths that exist' do
      let(:tokens) { ['adium', 'dropbox'] }
      before { allow(File).to receive(:exist?).and_return(false) }

      it 'tries to find paths for all tokens' do
        expect(Hbc).to receive(:path).twice
        subject
      end
    end
  end

  describe '#cask_tokens' do
    subject { cli.cask_tokens }

    context 'when no args are given' do
      let(:args) { [] }
      it { is_expected.to be_empty }
    end

    context 'when only flags are given' do
      let(:args) { ['--fix'] }
      it { is_expected.to be_empty }
    end

    context 'when only empty args are given' do
      let(:args) { ['', ''] }
      it { is_expected.to be_empty }
    end

    context 'when a cask token is given' do
      let(:args) { ['adium'] }
      it { is_expected.to eq(['adium']) }
    end

    context 'when multiple cask tokens are given' do
      let(:args) { ['adium', 'dropbox'] }
      it { is_expected.to eq(['adium', 'dropbox']) }
    end

    context 'when cask tokens are given with flags' do
      let(:args) { ['adium', 'dropbox', '--fix'] }
      it { is_expected.to eq(['adium', 'dropbox']) }
    end
  end

  describe '#rubocop_args' do
    subject { cli.rubocop_args }

    before do
      allow(cli).to receive(:fix?).and_return(fix)
    end

    context 'when fix? is true' do
      let(:fix) { true }
      it { is_expected.to include('--auto-correct') }
    end

    context 'when fix? is false' do
      let(:fix) { false }
      it { is_expected.not_to include('--auto-correct') }
    end
  end

  describe '#default_args' do
    subject { cli.default_args }
    let(:rubocop_config) { '.rubocop.yml' }
    before { allow(cli).to receive(:rubocop_config).and_return(rubocop_config) }

    it { is_expected.to include('--format', 'simple', '--force-exclusion', '--config', rubocop_config) }
  end

  describe '#autocorrect_args' do
    subject { cli.autocorrect_args }
    let(:default_args) { ['--format', 'simple'] }

    it 'should add --auto-correct to default args' do
      allow(cli).to receive(:default_args).and_return(default_args)
      expect(subject).to include('--auto-correct', *default_args)
    end
  end

  describe '#fix?' do
    subject { cli.fix? }

    context 'when --fix is passed as an argument' do
      let(:args) { ['adium', '--fix'] }
      it { should be_truthy }
    end

    context 'when --correct is passed as an argument' do
      let(:args) { ['adium', '--correct'] }
      it { should be_truthy }
    end

    context 'when --auto-correct is passed as an argument' do
      let(:args) { ['adium', '--auto-correct'] }
      it { should be_truthy }
    end

    context 'when --auto-correct is misspelled as --autocorrect' do
      let(:args) { ['adium', '--autocorrect'] }
      it { should be_truthy }
    end

    context 'when no flag equivalent to --fix is passed as an argument' do
      let(:args) { ['adium'] }
      it { should be_falsey }
    end
  end
end
