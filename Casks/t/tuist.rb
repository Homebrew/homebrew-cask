cask "tuist" do
  version "4.195.10"
  sha256 "a272c64f9723c9d59c05880a01dfcf0747831be4ee8a41c864b2a5e4f2eac3fb"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  depends_on :macos

  binary "tuist"

  zap trash: "~/.tuist"
end
