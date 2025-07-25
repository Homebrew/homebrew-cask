cask "tuist" do
  version "4.55.9"
  sha256 "9c26683e0540722ef2d301a1c7afac5ebd3567cc935e459a0da35700c0cb82d2"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  binary "tuist"

  zap trash: "~/.tuist"
end
