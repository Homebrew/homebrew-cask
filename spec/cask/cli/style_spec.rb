require "English"
require "spec_helper"

describe Hbc::CLI::Style do
  let(:args) { [] }
  let(:cli) { described_class.new(args) }

  around do |example|
    shutup { example.run }
  end

  describe ".run" do
    subject { described_class.run(args) }

    before do
      allow(described_class).to receive(:new).and_return(cli)
      allow(cli).to receive(:run).and_return(retval)
    end

    context "when rubocop succeeds" do
      let(:retval) { true }

      it "exits successfully" do
        subject
      end
    end

    context "when rubocop fails" do
      let(:retval) { false }

      it "raises an exception" do
        expect { subject }.to raise_error(Hbc::CaskError)
      end
    end
  end

  describe "#run" do
    subject { cli.run }

    before do
      allow(cli).to receive_messages(install_rubocop: nil,
                                     system:          nil,
                                     rubocop_args:    nil,
                                     cask_paths:      nil)
      allow($CHILD_STATUS).to receive(:success?).and_return(success)
    end

    context "when rubocop succeeds" do
      let(:success) { true }
      it { is_expected.to be_truthy }
    end

    context "when rubocop fails" do
      let(:success) { false }
      it { is_expected.to be_falsey }
    end
  end

  describe "#install_rubocop" do
    subject { cli.install_rubocop }

    context "when installation succeeds" do
      before do
        allow(Homebrew).to receive(:install_gem_setup_path!)
      end

      it "exits successfully" do
        expect { subject }.to_not raise_error
      end
    end

    context "when installation fails" do
      before do
        allow(Homebrew).to receive(:install_gem_setup_path!).and_raise(SystemExit)
      end

      it "raises an error" do
        expect { subject }.to raise_error(Hbc::CaskError)
      end
    end
  end

  describe "#cask_paths" do
    subject { cli.cask_paths }

    before do
      allow(cli).to receive(:cask_tokens).and_return(tokens)
    end

    context "when no cask tokens are given" do
      let(:tokens) { [] }

      before do
        allow(Hbc).to receive(:all_tapped_cask_dirs).and_return(%w[Casks MoreCasks])
      end

      it { is_expected.to eq(%w[Casks MoreCasks]) }
    end

    context "when at least one cask token is a path that exists" do
      let(:tokens) { ["adium", "Casks/dropbox.rb"] }
      before do
        allow(File).to receive(:exist?).and_return(false, true)
      end

      it "treats all tokens as paths" do
        expect(subject).to eq(tokens)
      end
    end

    context "when no cask tokens are paths that exist" do
      let(:tokens) { %w[adium dropbox] }
      before do
        allow(File).to receive(:exist?).and_return(false)
      end

      it "tries to find paths for all tokens" do
        expect(Hbc).to receive(:path).twice
        subject
      end
    end
  end

  describe "#cask_tokens" do
    subject { cli.cask_tokens }

    context "when no args are given" do
      let(:args) { [] }
      it { is_expected.to be_empty }
    end

    context "when only flags are given" do
      let(:args) { ["--fix"] }
      it { is_expected.to be_empty }
    end

    context "when only empty args are given" do
      let(:args) { ["", ""] }
      it { is_expected.to be_empty }
    end

    context "when a cask token is given" do
      let(:args) { ["adium"] }
      it { is_expected.to eq(["adium"]) }
    end

    context "when multiple cask tokens are given" do
      let(:args) { %w[adium dropbox] }
      it { is_expected.to eq(%w[adium dropbox]) }
    end

    context "when cask tokens are given with flags" do
      let(:args) { ["adium", "dropbox", "--fix"] }
      it { is_expected.to eq(%w[adium dropbox]) }
    end
  end

  describe "#rubocop_args" do
    subject { cli.rubocop_args }

    before do
      allow(cli).to receive(:fix?).and_return(fix)
    end

    context "when fix? is true" do
      let(:fix) { true }
      it { is_expected.to include("--auto-correct") }
    end

    context "when fix? is false" do
      let(:fix) { false }
      it { is_expected.not_to include("--auto-correct") }
    end
  end

  describe "#default_args" do
    subject { cli.default_args }
    let(:rubocop_config) { ".rubocop.yml" }
    before do
      allow(cli).to receive(:rubocop_config).and_return(rubocop_config)
    end

    it { is_expected.to include("--format", "simple", "--force-exclusion", "--config", rubocop_config) }
  end

  describe "#autocorrect_args" do
    subject { cli.autocorrect_args }
    let(:default_args) { ["--format", "simple"] }

    it "should add --auto-correct to default args" do
      allow(cli).to receive(:default_args).and_return(default_args)
      expect(subject).to include("--auto-correct", *default_args)
    end
  end

  describe "#fix?" do
    subject { cli.fix? }

    context "when --fix is passed as an argument" do
      let(:args) { ["adium", "--fix"] }
      it { should be_truthy }
    end

    context "when --correct is passed as an argument" do
      let(:args) { ["adium", "--correct"] }
      it { should be_truthy }
    end

    context "when --auto-correct is passed as an argument" do
      let(:args) { ["adium", "--auto-correct"] }
      it { should be_truthy }
    end

    context "when --auto-correct is misspelled as --autocorrect" do
      let(:args) { ["adium", "--autocorrect"] }
      it { should be_truthy }
    end

    context "when no flag equivalent to --fix is passed as an argument" do
      let(:args) { ["adium"] }
      it { should be_falsey }
    end
  end
end
