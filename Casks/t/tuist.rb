cask "tuist" do
  version "4.180.0"
  sha256 "7c322f0940455b05e439383f4e70a7dfb21080b05f9b104782ad8426228f1a60"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  binary "tuist"

  zap trash: "~/.tuist"
end
