cask "tuist" do
  version "4.35.0"
  sha256 "cac2ee642fe50796e0a52efe286a1eaa4e97d25033eecc609737762b5ff9823e"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  binary "tuist"

  zap trash: "~/.tuist"
end
