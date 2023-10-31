cask "tuist" do
  version "3.31.0"
  sha256 "e33964b739a4e2ba43a96ac135faedb25ef73c979fa844d58314310a5add5cec"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  binary "tuist"

  zap trash: "~/.tuist"
end
