cask "timer" do
  version :latest
  sha256 :no_check

  url "https://www.apimac.com/download/Timer.zip"
  name "Timer"
  desc "Stopwatch, alarm clock,  and clock utility"
  homepage "https://www.apimac.com/mac/timer/"

  app "Timer.app"

  zap trash: [
    "~/Library/Preferences/Apimac",
    "~/Library/Application Support/Apimac",
    "~/Library/Preferences/com.apimac.TimerMac.pdata",
    "~/Library/Preferences/com.apimac.Timer.plist",
  ]
end
