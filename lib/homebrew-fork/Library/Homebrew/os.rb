module OS
  def self.mac?
    /darwin/i === RUBY_PLATFORM
  end

  if OS.mac?
    ISSUES_URL = "https://github.com/Homebrew/homebrew/wiki/troubleshooting"
    PATH_OPEN = "/usr/bin/open"
  else
    raise "Unknown operating system"
  end
end
