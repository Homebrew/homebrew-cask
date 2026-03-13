cask "tuist" do
  version "4.158.2"
  sha256 "97ec33ffe4c82c75d631b423b10838eae6dbc4ba34e4770f18f62a554931f728"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  binary "tuist"

  zap trash: "~/.tuist"
end
