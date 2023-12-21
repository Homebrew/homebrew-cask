cask "tuist" do
  version "3.36.2"
  sha256 "3dc5686c4c101adf4851a036a3490bcfd4e90b378d5ed026c6b95599d55be7ab"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  binary "tuist"

  zap trash: "~/.tuist"
end
