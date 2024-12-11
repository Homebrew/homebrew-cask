cask "tuist" do
  version "4.37.0"
  sha256 "7cf776562b102a9ff95d4643efec69ab43d6bee71c94d51d89722549a8ad3cd2"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  binary "tuist"

  zap trash: "~/.tuist"
end
