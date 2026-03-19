cask "tuist" do
  version "4.162.0"
  sha256 "9287726ae6cd6b66ab0f19fe92408ce0c8740de089f7aa7a72681d5164a746a9"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  binary "tuist"

  zap trash: "~/.tuist"
end
