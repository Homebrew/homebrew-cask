cask "time-to-leave" do
  version "1.5.5"
  sha256 "4700e3d1c4e88f573e9f933aa3aa746024e836429634e4d2e8a52e3344ab955b"

  url "https://github.com/thamara/time-to-leave/releases/download/v.#{version}/time-to-leave.dmg"
  appcast "https://github.com/thamara/time-to-leave/releases.atom"
  name "Time To Leave"
  desc "Log work hours and get notified when it's time to leave the office"
  homepage "https://github.com/thamara/time-to-leave"

  app "Time To Leave.app"
end
