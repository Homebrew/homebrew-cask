class Cask::Auditor
  def self.audit(cask, options = {})
    audit = Cask::Audit.new(cask)

    if options.fetch(:audit_download, false)
      audit.run!(Cask::Download.new(cask))
    else
      audit.run!
    end

    puts audit.summary
  end
end
