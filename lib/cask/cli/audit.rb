class Cask::CLI::Audit
  def self.run(*args)
    casks_to_audit = args.empty? ? Cask.all : args.map { |arg| Cask.load(arg) }
    casks_to_audit.each do |cask|
      Cask::Auditor.audit(cask)
    end
  end

  def self.help
    "verifies installability of casks"
  end
end
