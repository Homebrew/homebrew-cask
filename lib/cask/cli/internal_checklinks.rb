class Cask::CLI::InternalChecklinks < Cask::CLI::InternalUseBase
  def self.run(*args)
    casks_to_check = args.empty? ? Cask.all : args.map { |arg| Cask.load(arg) }
    casks_to_check.each do |cask|
      odebug "Checking links for Cask #{cask}"
      checker = Cask::LinkChecker.new(cask)
      checker.run
      puts checker.summary
    end
  end

  def self.help
    "checks for bad Cask links"
  end
end
