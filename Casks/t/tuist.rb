cask "tuist" do
  version "4.166.2"
  sha256 "ab476ec4e008d4be91075dbb409b39f8acf616b712f0f19a74bb962c81124ef6"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  binary "tuist"

  zap trash: "~/.tuist"
end
