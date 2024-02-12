cask "tuist" do
  version "4.1.0"
  sha256 "78ba7dde521a924f18b9ece58c3fccfedc41657b8d72c1af767bc06ffa9b6236"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  binary "tuist"

  zap trash: "~/.tuist"
end
