cask "tuist" do
  version "4.64.0"
  sha256 "74dc93a5b21ab10d1de589d98eb6df884a77f0857dc98694942c5f0096e33aef"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  binary "tuist"

  zap trash: "~/.tuist"
end
