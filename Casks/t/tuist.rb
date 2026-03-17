cask "tuist" do
  version "4.160.0"
  sha256 "44a50c2a515616dc8d7e00e00ea4bee442b02bcb63d0521c50118ee3fde46045"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  binary "tuist"

  zap trash: "~/.tuist"
end
