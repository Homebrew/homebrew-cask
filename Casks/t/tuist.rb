cask "tuist" do
  version "4.72.0"
  sha256 "d228b9c374fa3911dc8723a1de739583784f106a39aa76376373f6849b109b75"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  binary "tuist"

  zap trash: "~/.tuist"
end
