class Hbc::Auditor
  def self.audit(cask, options = {})
    download = options.fetch(:audit_download, false) && Hbc::Download.new(cask)
    audit = Hbc::Audit.new(cask, download)
    audit.run!
    puts audit.summary
    audit.success?
  end
end
