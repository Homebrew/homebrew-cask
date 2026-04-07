cask "tuist" do
  version "4.174.3"
  sha256 "e0bbe2c17f281ef0bf335b3581e1e3245fb230a648a65b073487ab1be5056cb0"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  binary "tuist"

  zap trash: "~/.tuist"
end
