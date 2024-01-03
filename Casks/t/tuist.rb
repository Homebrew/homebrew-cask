cask "tuist" do
  version "3.38.0"
  sha256 "f1ed67baefca6a7a6f792f81629f11dbf7fb5d52b5cae9e8305cc1e5a31163e6"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  binary "tuist"

  zap trash: "~/.tuist"
end
