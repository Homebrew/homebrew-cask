cask "tuist" do
  version "4.46.0"
  sha256 "73075fbc1e4dcd61463edf33803bc483ec65158226288cd5637857f7843effd1"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  binary "tuist"

  zap trash: "~/.tuist"
end
