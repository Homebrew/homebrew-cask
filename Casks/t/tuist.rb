cask "tuist" do
  version "4.97.0"
  sha256 "7f21b1f57e904afe5b3c054eec877615518e7c048438184fab41c0055dcdd9cf"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  binary "tuist"

  zap trash: "~/.tuist"
end
