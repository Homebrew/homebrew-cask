cask "tuist" do
  version "4.124.1"
  sha256 "49bcf2ec95fa9e1123343babdc3f33ad539f49b0483df53481bdd5370f215bd3"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  binary "tuist"

  zap trash: "~/.tuist"
end
