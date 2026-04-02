cask "tuist" do
  version "4.174.1"
  sha256 "5e3999ec8d05397216338f2edf2b6ffa30159760be627b0f137a30d85fdc0043"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  binary "tuist"

  zap trash: "~/.tuist"
end
