cask "tuist" do
  version "3.42.0"
  sha256 "106928d6cca15d58c9b32fb88c2bec13bd531a8e7a3e70b050e872f855df8cae"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  binary "tuist"

  zap trash: "~/.tuist"
end
