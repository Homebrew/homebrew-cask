cask "tuist" do
  version "4.3.2"
  sha256 "dd52b671ef619fe90e028a20dce6d55d0fb41e0ec1798c7c3b695209d243939e"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  binary "tuist"

  zap trash: "~/.tuist"
end
