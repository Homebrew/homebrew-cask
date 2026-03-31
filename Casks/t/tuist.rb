cask "tuist" do
  version "4.171.3"
  sha256 "bbbdbb744fc0d3f38465e7effbc01134a3599f7d28311a9960c8dff5eda61a32"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  binary "tuist"

  zap trash: "~/.tuist"
end
