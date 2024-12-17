cask "tuist" do
  version "4.38.0"
  sha256 "3d1390f5df8487849eb0a849e56437bf36da1f9d29384b46ae365e31bf44177f"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  binary "tuist"

  zap trash: "~/.tuist"
end
