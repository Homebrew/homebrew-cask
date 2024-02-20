cask "tuist" do
  version "4.3.1"
  sha256 "0b8b3e2e021a042b4dc3149baca797c42931bbcd80645ccab1f885676785e810"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  binary "tuist"

  zap trash: "~/.tuist"
end
