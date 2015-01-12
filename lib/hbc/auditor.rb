class Hbc::Auditor
  def self.audit(cask, options = {})
    audit = Hbc::Audit.new(cask)

    retval = if options.fetch(:audit_download, false)
      audit.run!(Hbc::Download.new(cask))
    else
      audit.run!
    end

    puts audit.summary
    retval
  end
end
