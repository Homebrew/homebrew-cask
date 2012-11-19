class Cask::Auditor
  def self.audit(cask)
    audit = Cask::Audit.new(cask)
    audit.run!
    puts audit.summary
  end
end
