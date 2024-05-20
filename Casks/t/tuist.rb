cask "tuist" do
  version "4.14.0"
  sha256 "09034cc19ab1c221c534680603f40a37a3ad2bcaa4e627ef007af181a9fcb1e8"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  binary "tuist"

  zap trash: "~/.tuist"
end
