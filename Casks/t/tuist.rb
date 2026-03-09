cask "tuist" do
  version "4.155.4"
  sha256 "2c8658fded222f07d831aa18ba5d56511946df39910235c48aa4c84b7495fd0a"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  binary "tuist"

  zap trash: "~/.tuist"
end
