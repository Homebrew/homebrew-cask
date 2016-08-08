class Hbc::CLI::Audit < Hbc::CLI::Base
  def self.help
    "verifies installability of Casks"
  end

  def self.run(*args)
    failed_casks = new(args, Hbc::Auditor).run
    return if failed_casks.empty?
    raise Hbc::CaskError, "audit failed for casks: #{failed_casks.join(' ')}"
  end

  def initialize(args, auditor)
    @args = args
    @auditor = auditor
  end

  def run
    casks_to_audit.each_with_object([]) do |cask, failed|
      failed << cask unless audit(cask)
    end
  end

  def audit(cask)
    odebug "Auditing Cask #{cask}"
    @auditor.audit(cask, audit_download: audit_download?)
  end

  def audit_download?
    @args.include?("--download")
  end

  def casks_to_audit
    if cask_tokens.empty?
      Hbc.all
    else
      cask_tokens.map { |token| Hbc.load(token) }
    end
  end

  def cask_tokens
    @cask_tokens ||= @args.reject { |a| a == "--download" }
  end

  def self.needs_init?
    true
  end
end
