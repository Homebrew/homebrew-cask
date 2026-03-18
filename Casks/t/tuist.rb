cask "tuist" do
  version "4.161.0"
  sha256 "091b67c3b8948697e278350af893b466ffffceab1150cb1e9ef046590a55e8fd"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  binary "tuist"

  zap trash: "~/.tuist"
end
