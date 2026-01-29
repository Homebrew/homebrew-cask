cask "tuist" do
  version "4.132.1"
  sha256 "5f71a46ce4a0982076602530e97321aa266e0c8d5edd863dab45a1cbb24595d5"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  binary "tuist"

  zap trash: "~/.tuist"
end
