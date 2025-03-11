cask "tuist" do
  version "4.44.2"
  sha256 "20802c866ca2225f8042d0ecac6a86d32275ea2aae4d38835490d4d34e0e97ec"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  binary "tuist"

  zap trash: "~/.tuist"
end
