cask "tuist" do
  version "4.92.1"
  sha256 "afec0a1b2bd663b9689fb1dd964ddcdc03a94ce4afd1ad5c3995d70cddb7ddc8"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  binary "tuist"

  zap trash: "~/.tuist"
end
