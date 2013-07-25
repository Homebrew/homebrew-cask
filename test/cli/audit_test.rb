require 'test_helper'

describe Cask::CLI::Audit do
  let(:auditor) { mock() }
  let(:cask) { mock() }

  describe 'selection of casks to audit' do
    it 'audits all casks if no names are given' do
      Cask.stubs(:all => [cask, cask])
      auditor.expects(:audit).times(2)

      run_audit([], auditor)
    end

    it 'audits specified casks if names are given' do
      cask_name = 'nice-app'
      Cask.expects(:load).with(cask_name).returns(cask)
      auditor.expects(:audit).with(cask, :audit_download => false)

      run_audit([cask_name], auditor)
    end
  end

  describe 'rules for downloading a cask' do
    it 'does not download the cask per default' do
      Cask.stubs(:load => cask)

      auditor.expects(:audit).with(cask, :audit_download => false)

      run_audit(['caskname'], auditor)
    end

    it 'download a cask if --download flag is set' do
      Cask.stubs(:load => cask)

      auditor.expects(:audit).with(cask, :audit_download => true)

      run_audit(['caskname', '--download'], auditor)
    end
  end

  def run_audit(args, auditor)
    Cask::CLI::Audit.new(args, auditor).run
  end
end
