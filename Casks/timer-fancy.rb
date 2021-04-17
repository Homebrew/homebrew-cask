cask "timer-fancy" do
  version "0.0.2"
  sha256 :no_check

  url "https://github.com/Jonass-K/Timer3000/releases/download/0.0.2/Timer3000.zip"
  name "Timer3000"
  desc "Simple timer app which reads the time left out loud"
  homepage "https://github.com/Jonass-K/Timer3000"

  auto_updates true

  app "Timer3000.app"

  caveats "To run the app remove the quarantine attribute:"
  caveats "xattr -d com.apple.quarantine /Applications/Timer3000.app"
end
