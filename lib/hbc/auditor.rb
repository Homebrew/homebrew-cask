class Hbc::Auditor
  def self.audit(cask, audit_download: false)
    download = audit_download && Hbc::Download.new(cask)
    audit = Hbc::Audit.new(cask, download)
    audit.run!
    puts audit.summary
    audit.success?
  end
end
