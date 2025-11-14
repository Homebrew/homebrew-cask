cask "tuist" do
  version "4.104.5"
  sha256 "e3de8c0d703914f4bab673de1543234546f696ad8efcd8c8c81b1c5aef18c67e"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  binary "tuist"

  zap trash: "~/.tuist"
end
