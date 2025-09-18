cask "tuist" do
  version "4.76.0"
  sha256 "b9e567faf20ca5577a1d3ec8a26c196dd16fee293ffa986655cef9daaf78f456"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  binary "tuist"

  zap trash: "~/.tuist"
end
