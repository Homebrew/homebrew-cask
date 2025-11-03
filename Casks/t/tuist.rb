cask "tuist" do
  version "4.98.0"
  sha256 "e52e045594f982493cf37c4ca4c15b9bf0d62fe53b5262b8400411f8887fae8b"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  binary "tuist"

  zap trash: "~/.tuist"
end
