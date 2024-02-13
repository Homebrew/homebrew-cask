cask "tuist" do
  version "4.1.2"
  sha256 "f32a6201068c7ea6d2035d1cf6ba9e89a6ce61b60ac066079f7f0acf36f12aaa"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  binary "tuist"

  zap trash: "~/.tuist"
end
