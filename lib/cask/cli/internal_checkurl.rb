class Cask::CLI::InternalCheckurl < Cask::CLI::InternalUseBase
  def self.run(*args)
    casks_to_check = args.empty? ? Cask.all : args.map { |arg| Cask.load(arg) }
    casks_to_check.each do |cask|
      odebug "Checking URL for Cask #{cask}"
      checker = Cask::UrlChecker.new(cask)
      checker.run
      puts checker.summary
    end
  end

  def self.help
    "checks for bad Cask URLs"
  end
end
