cask "tuist" do
  version "4.141.1"
  sha256 "b906857684a3249941d21b3d68f1b495ac8e4f0aef6e0a684dede6194e51a5a4"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  binary "tuist"

  zap trash: "~/.tuist"
end
