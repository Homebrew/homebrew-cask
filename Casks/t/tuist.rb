cask "tuist" do
  version "4.155.5"
  sha256 "cb6406cc0ecc85042247326f16a36cc4dd7b804111e2a32d76c9b4b9d06a0ebf"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  binary "tuist"

  zap trash: "~/.tuist"
end
