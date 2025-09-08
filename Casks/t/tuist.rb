cask "tuist" do
  version "4.68.0"
  sha256 "d5e9536875db2a436f83340a23559866cc6bd4eb9a9249681d0780a142f59504"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  binary "tuist"

  zap trash: "~/.tuist"
end
