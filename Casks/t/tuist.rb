cask "tuist" do
  version "4.74.1"
  sha256 "cb0e6890b6b9365933ee602bbc4d1110cd9e52c20809a6271c3068d426fac3d6"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  binary "tuist"

  zap trash: "~/.tuist"
end
