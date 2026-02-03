cask "tuist" do
  version "4.136.0"
  sha256 "eb7d2f4705c130a1313b5c11fa5e6c61f7cda2b30ee9f784568b6625c3642d94"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  binary "tuist"

  zap trash: "~/.tuist"
end
