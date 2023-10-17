cask "tuist" do
  version "3.29.0"
  sha256 "1243bb691c6b4131fe3a1ad8107a0fb24f354cf1633ca99df6043c5686497bde"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  binary "tuist"

  zap trash: "~/.tuist"
end
