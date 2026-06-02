cask "tuist" do
  version "4.195.14"
  sha256 "93acfccdffce6976cc9b690271851b1e710f0fc8ea3ca6fa527a638f02974a50"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  depends_on :macos

  binary "tuist"

  zap trash: "~/.tuist"
end
