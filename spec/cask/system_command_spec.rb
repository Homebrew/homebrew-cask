require 'spec_helper'

describe Hbc::SystemCommand do
  describe "when the exit code is 0" do
    let(:command) { '/usr/bin/true' }

    it "says the command was successful" do
      result = described_class.run(command)
      expect(result.success?).to eq(true)
    end

    it "says the exit status is 0" do
      result = described_class.run(command)
      expect(result.exit_status).to eq(0)
    end
  end

  describe "when the exit code is 1" do
    let(:command) { '/usr/bin/false' }

    describe "and the command must succeed" do
      it "throws an error" do
        expect {
          described_class.run!(command)
        }.to raise_error(Hbc::CaskCommandFailedError)
      end
    end

    describe "and the command does not have to succeed" do
      it "says the command failed" do
        result = described_class.run(command)
        expect(result.success?).to eq(false)
      end

      it "says the exit status is 1" do
        result = described_class.run(command)
        expect(result.exit_status).to eq(1)
      end
    end
  end

  describe "args" do
    let(:command) { '/bin/ls' }
    let(:path)    { Pathname(Dir.mktmpdir) }

    before do
      FileUtils.touch(path.join('somefile'))
    end

    it "can be pathnames" do
      result = described_class.run(command, args: [path])

      expect(result.success?).to eq(true)
      expect(result.stdout).to eq("somefile\n")
    end
  end
end

