cask "tuist" do
  version "4.59.0"
  sha256 "0a462243687900a21e51fccf1ef2b5ae8434dc47d676c45f10a89f1101589121"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  binary "tuist"

  zap trash: "~/.tuist"
end
