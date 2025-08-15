cask "tuist" do
  version "4.61.2"
  sha256 "29d33c002dfd80e1319323430f86f0872f0900cd1d4f5add7ee95201923a326e"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  binary "tuist"

  zap trash: "~/.tuist"
end
