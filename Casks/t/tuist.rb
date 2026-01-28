cask "tuist" do
  version "4.131.2"
  sha256 "b0a9891bb37d4485dee003d8df02af7ae4cfddbde1d4d0960136475bbdc06696"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  binary "tuist"

  zap trash: "~/.tuist"
end
