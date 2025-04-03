cask "tuist" do
  version "4.46.1"
  sha256 "d40e96cba0c5e96bb9d547ae86191f5395755dea24fe727e4073cad05ab4017e"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  binary "tuist"

  zap trash: "~/.tuist"
end
