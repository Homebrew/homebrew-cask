cask "tuist" do
  version "4.163.1"
  sha256 "fe89c9951453a5a13560dd3c7336bb7257c9d1cb10d7240212a1feffdbe41acf"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  binary "tuist"

  zap trash: "~/.tuist"
end
