cask "tuist" do
  version "4.102.0"
  sha256 "8b2186e0204f1ba1b1f31692baff06e2183d6f9acb3ee4146bc701893b2e88fc"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  binary "tuist"

  zap trash: "~/.tuist"
end
