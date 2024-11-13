cask "tuist" do
  version "4.34.0"
  sha256 "bfcd66af10fa243763ed177adda78a03991d8f45fe7eefa7ee156df4b6a028df"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  binary "tuist"

  zap trash: "~/.tuist"
end
