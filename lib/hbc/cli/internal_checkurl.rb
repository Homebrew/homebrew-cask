class Hbc::CLI::InternalCheckurl < Hbc::CLI::InternalUseBase
  def self.run(*args)
    casks_to_check = args.empty? ? Hbc.all : args.map { |arg| Hbc.load(arg) }
    casks_to_check.each do |cask|
      odebug "Checking URL for Cask #{cask}"
      checker = Hbc::UrlChecker.new(cask)
      checker.run
      puts checker.summary
    end
  end

  def self.help
    "checks for bad Cask URLs"
  end
end
