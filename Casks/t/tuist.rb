cask "tuist" do
  version "4.176.1"
  sha256 "481f6d898279331afbe4806ee067c5651172777868854d592554277e3c7556ba"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  binary "tuist"

  zap trash: "~/.tuist"
end
