cask "tuist" do
  version "4.65.4"
  sha256 "107a08a54c1860e82cbf65f11d23168b6f4883bc6be60df706ede1d1b696e171"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  binary "tuist"

  zap trash: "~/.tuist"
end
