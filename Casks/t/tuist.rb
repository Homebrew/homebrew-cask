cask "tuist" do
  version "4.106.1"
  sha256 "665785da9a32e90263b4de3bd1739c5da915801d77f518750f30837ebaf77bc7"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  binary "tuist"

  zap trash: "~/.tuist"
end
