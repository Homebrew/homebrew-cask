cask "tuist" do
  version "4.65.0"
  sha256 "9416b90cfaac390211a0feac1d29ab16db4836a2e4698c7a578a7036843c787a"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  binary "tuist"

  zap trash: "~/.tuist"
end
