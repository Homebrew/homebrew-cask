cask "time-to-leave" do
  version "2.0.1"
  sha256 "645026480b04cec15dce96b0dbd361565f6647fcb9ab79df457ea5f1fa75f02f"

  url "https://github.com/thamara/time-to-leave/releases/download/v#{version}/time-to-leave.dmg"
  name "Time To Leave"
  desc "Log work hours and get notified when it's time to leave the office"
  homepage "https://github.com/thamara/time-to-leave"

  livecheck do
    url :url
    strategy :git
    regex(/^v?\.?(\d+(?:\.\d+)*)$/i)
  end

  app "Time To Leave.app"
end
