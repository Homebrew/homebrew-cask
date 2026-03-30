cask "tuist" do
  version "4.171.2"
  sha256 "a4092a32cce19349a4e706294e2cd9100320d19ab67d7530fbfa8629e78d987b"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  binary "tuist"

  zap trash: "~/.tuist"
end
