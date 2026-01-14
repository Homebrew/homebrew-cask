cask "tuist" do
  version "4.124.0"
  sha256 "b5cc6d26d98ee0f87ac0614b421c624cbf723dccb25c0dae3c7399c429d41e10"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  binary "tuist"

  zap trash: "~/.tuist"
end
