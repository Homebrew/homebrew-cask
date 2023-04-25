cask "ytpull" do
  version "1.0.0"
  sha256 "31f71341507b4ca73dc095108fbb442f92d22209d3542918e66833518a270747"

  url "https://github.com/huynguyen-n/YTPull/releases/download/v#{version}/YTPull.zip"
  name "YTPull"
  desc "Simple macOS App for downloading YouTube videos and audio"
  homepage "https://github.com/huynguyen-n/YTPull"

  app "YTPull.app"
end
