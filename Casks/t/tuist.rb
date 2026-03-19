cask "tuist" do
  version "4.161.3"
  sha256 "ce46f78944ffaafce530a9a9fcb36b4b1df6bbd8dfc0a398ace5f75c87615fba"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  binary "tuist"

  zap trash: "~/.tuist"
end
