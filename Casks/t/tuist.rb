cask "tuist" do
  version "4.158.1"
  sha256 "0b15f8b2c8587cfff45e1bbd7a76440f2fb5109ac6f11fc794e9132f51e71379"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  binary "tuist"

  zap trash: "~/.tuist"
end
