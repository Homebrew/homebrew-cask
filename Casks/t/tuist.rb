cask "tuist" do
  version "4.160.3"
  sha256 "7aba56d014cc59af1d19f59769fc8783e11c11fa8a4365ec5b142255de4aa3fe"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  binary "tuist"

  zap trash: "~/.tuist"
end
