cask "tuist" do
  version "4.200.0"
  sha256 "4a2feb9d95a22542023f8eea0f0bdec606a321c0f19da1739d1ad785bbcd78dc"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  depends_on :macos

  binary "tuist"

  zap trash: "~/.tuist"
end
