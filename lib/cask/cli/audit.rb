class Cask::CLI::Audit < Cask::CLI::Base
  def self.help
    'verifies installability of Casks'
  end

  def self.run(*args)
    retval = new(args, Cask::Auditor).run
    # retval is ternary: true/false/nil
    if retval.nil?
      raise CaskError.new("audit failed")
    elsif ! retval
      raise CaskError.new("some audits failed")
    end
  end

  def initialize(args, auditor)
    @args = args
    @auditor = auditor
  end

  def run
    count = 0
    casks_to_audit.each do |cask|
      count += 1 if audit(cask)
    end
    count == 0 ? nil : count == casks_to_audit.length
  end

  def audit(cask)
    odebug "Auditing Cask #{cask}"
    @auditor.audit(cask, :audit_download => audit_download?)
  end

  def audit_download?
    @args.include?('--download')
  end

  def casks_to_audit
    if cask_list.empty?
      Cask.all
    else
      cask_list.map { |arg| Cask.load(arg) }
    end
  end

  def cask_list
    @cask_list ||= @args.reject { |a| a == '--download' }
  end
end
