cask "tuist" do
  version "4.82.3"
  sha256 "091b4043f92f3e607d9a902478f3b773b3ec05d5d83eb64c4d9e6df4f1e4a0ff"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  binary "tuist"

  zap trash: "~/.tuist"
end
