cask "tuist" do
  version "4.86.3"
  sha256 "335c56350607daf3fa5a7261ef83825b42dd7ce34acfb22576bc294dd0b3dbac"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  binary "tuist"

  zap trash: "~/.tuist"
end
