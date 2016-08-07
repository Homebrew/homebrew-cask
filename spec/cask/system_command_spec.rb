require "spec_helper"

describe Hbc::SystemCommand do
  describe "when the exit code is 0" do
    describe "its result" do
      subject { described_class.run("/usr/bin/true") }

      it { is_expected.to be_a_success }
      its(:exit_status) { is_expected.to eq(0) }
    end
  end

  describe "when the exit code is 1" do
    let(:command) { "/usr/bin/false" }

    describe "and the command must succeed" do
      it "throws an error" do
        expect {
          described_class.run!(command)
        }.to raise_error(Hbc::CaskCommandFailedError)
      end
    end

    describe "and the command does not have to succeed" do
      describe "its result" do
        subject { described_class.run(command) }

        it { is_expected.not_to be_a_success }
        its(:exit_status) { is_expected.to eq(1) }
      end
    end
  end

  describe "given a pathname" do
    let(:command) { "/bin/ls" }
    let(:path)    { Pathname(Dir.mktmpdir) }

    before do
      FileUtils.touch(path.join("somefile"))
    end

    describe "its result" do
      subject { described_class.run(command, args: [path]) }

      it { is_expected.to be_a_success }
      its(:stdout) { is_expected.to eq("somefile\n") }
    end
  end

  describe "with both STDOUT and STDERR output from upstream" do
    let(:command) { "/bin/bash" }
    let(:options) {
      { args: [
                "-c",
                "for i in $(seq 1 2 5); do echo $i; echo $(($i + 1)) >&2; done",
              ] }
    }

    shared_examples "it returns '1 2 3 4 5 6'" do
      describe "its result" do
        subject { shutup { described_class.run(command, options) } }

        it { is_expected.to be_a_success }
        its(:stdout) { is_expected.to eq([1, 3, 5, nil].join("\n")) }
        its(:stderr) { is_expected.to eq([2, 4, 6, nil].join("\n")) }
      end
    end

    describe "with default options" do
      it "echoes only STDERR" do
        expected = [2, 4, 6].map { |i| "==> #{i}\n" }.join("")
        expect {
          described_class.run(command, options)
        }.to output(expected).to_stdout
      end

      include_examples("it returns '1 2 3 4 5 6'")
    end

    describe "with print_stdout" do
      before do
        options.merge!(print_stdout: true)
      end

      it "echoes both STDOUT and STDERR" do
        (1..6).each do |i|
          expect {
            described_class.run(command, options)
          }.to output(%r{==> #{ i }}).to_stdout
        end
      end

      include_examples("it returns '1 2 3 4 5 6'")
    end

    describe "without print_stderr" do
      before do
        options.merge!(print_stderr: false)
      end

      it "echoes nothing" do
        expect {
          described_class.run(command, options)
        }.to output("").to_stdout
      end

      include_examples("it returns '1 2 3 4 5 6'")
    end

    describe "with print_stdout but without print_stderr" do
      before do
        options.merge!(print_stdout: true, print_stderr: false)
      end

      it "echoes only STDOUT" do
        expected = [1, 3, 5].map { |i| "==> #{i}\n" }.join("")
        expect {
          described_class.run(command, options)
        }.to output(expected).to_stdout
      end

      include_examples("it returns '1 2 3 4 5 6'")
    end
  end

  describe "with a very long STDERR output" do
    let(:command) { "/bin/bash" }
    let(:options) {
      { args: [
                "-c",
                "for i in $(seq 1 2 100000); do echo $i; echo $(($i + 1)) >&2; done",
              ] }
    }

    it "returns without deadlocking" do
      wait(10).for {
        shutup { described_class.run(command, options) }
      }.to be_a_success
    end
  end
end
