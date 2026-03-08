cask "tuist" do
  version "4.155.3"
  sha256 "a57e46099af195285816accff8681311cb8300c6eb5573ac42e61c799c277da2"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  binary "tuist"

  zap trash: "~/.tuist"
end
