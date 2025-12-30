cask "tuist" do
  version "4.119.1"
  sha256 "f9b8755bcd65b07be2af43f640fab44cd3a991e778e3c6fdd5f8419b16c9e797"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  binary "tuist"

  zap trash: "~/.tuist"
end
