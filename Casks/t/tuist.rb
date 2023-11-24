cask "tuist" do
  version "3.33.4"
  sha256 "4ef1bd17c3d52d50742757d9679f79964528c4e3f8532108a4b22e7a98926ecb"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  binary "tuist"

  zap trash: "~/.tuist"
end
