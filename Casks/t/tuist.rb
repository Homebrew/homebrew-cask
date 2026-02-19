cask "tuist" do
  version "4.148.3"
  sha256 "7c26fb926aeabc13f7c7b5ddf8de3c8aa6114738aa414840e5c562dbf0c983a4"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  binary "tuist"

  zap trash: "~/.tuist"
end
