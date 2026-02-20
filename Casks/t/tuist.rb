cask "tuist" do
  version "4.149.1"
  sha256 "5932cced4f3baa6b55af3e2c093a95e0a317c4d8e3a62f0aea4c27b0c92d568b"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  binary "tuist"

  zap trash: "~/.tuist"
end
