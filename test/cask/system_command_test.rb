require 'test_helper'

describe Hbc::SystemCommand do
  describe "when the exit code is 0" do
    result = nil

    before do
      command = '/usr/bin/true'
      options = {
        :must_succeed => false
      }
      result = Hbc::SystemCommand.run(command, options)
    end

    it "says the command was successful" do
      result.success?.must_equal(true)
    end

    it "says the exit status is 0" do
      result.exit_status.must_equal(0)
    end
  end

  describe "when the exit code is 1" do
    describe "and the command must succeed" do
      it "throws an error" do
        lambda {
          command = '/usr/bin/false'
          options = {
            :must_succeed => true
          }
          result = Hbc::SystemCommand.run(command, options)
        }.must_raise(Hbc::CaskCommandFailedError)
      end
    end

    describe "and the command does not have to succeed" do
      result = nil

      before do
        command = '/usr/bin/false'
        options = {
          :must_succeed => false
        }
        result = Hbc::SystemCommand.run(command, options)
      end

      it "says the command failed" do
        result.success?.must_equal(false)
      end

      it "says the exit status is 1" do
        result.exit_status.must_equal(1)
      end
    end
  end
end
