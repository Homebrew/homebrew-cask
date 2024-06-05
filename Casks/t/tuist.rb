cask "tuist" do
  version "4.16.1"
  sha256 "965634f55a65cffed46f2eaa51f374bd2db44bd6007fe8ebd18cf2ef65de1ca1"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  binary "tuist"

  zap trash: "~/.tuist"
end
