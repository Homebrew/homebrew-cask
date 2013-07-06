class Cask::CLI::Audit
  def self.help
    'verifies installability of casks'
  end

  def self.run(*args)
    new(args, Cask::Auditor).run
  end

  def initialize(args, auditor)
    @args = args
    @auditor = auditor
  end

  def run
    casks_to_audit.each { |cask| audit(cask) }
  end

  def audit(cask)
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
