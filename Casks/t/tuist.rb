cask "tuist" do
  version "4.106.3"
  sha256 "01e5f993a360117ee16a7491bf5850e946b8777917100a5fc3489426f4cd0a72"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  binary "tuist"

  zap trash: "~/.tuist"
end
