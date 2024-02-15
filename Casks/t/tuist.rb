cask "tuist" do
  version "4.2.1"
  sha256 "b9567d233a13dc0877296a47490f620016c853264343d6abf20c0d44ae54d8aa"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  binary "tuist"

  zap trash: "~/.tuist"
end
