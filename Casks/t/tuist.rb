cask "tuist" do
  version "4.26.0"
  sha256 "141f7f77a96e4c3537a0065cea5f27eaa026d897a05f21f5d7bdcc5b401d0b7a"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  binary "tuist"

  zap trash: "~/.tuist"
end
