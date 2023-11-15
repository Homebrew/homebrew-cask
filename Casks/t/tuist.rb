cask "tuist" do
  version "3.32.1"
  sha256 "34a695e31828c2158ec8f3aba60ef0195e0a729bc5b02ac5a40eefd2b8c52e1a"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  binary "tuist"

  zap trash: "~/.tuist"
end
