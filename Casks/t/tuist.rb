cask "tuist" do
  version "4.18.0"
  sha256 "6b3305ddcc1f8cc7a216228761d68181989d40f529dfbea2122a08a8969a8ab5"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  binary "tuist"

  zap trash: "~/.tuist"
end
