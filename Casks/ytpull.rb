cask "ytpull" do
  version "1.0.0"
  sha256 "7a63a7aa5bb397c7518170694b3e00a23eeeaa572391dd022d321b0736aae592"

  url "https://github.com/huynguyen-n/YTPull/releases/download/v#{version}/YTPull.zip"
  name "YTPull"
  desc "Simple app for downloading YouTube videos and audio"
  homepage "https://github.com/huynguyen-n/YTPull"

  app "YTPull.app"
end
