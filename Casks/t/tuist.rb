cask "tuist" do
  version "4.97.2"
  sha256 "894df9948c001f623cbc08c9672833b4096c6a75c9115ce5e7bae1c0714eb99f"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  binary "tuist"

  zap trash: "~/.tuist"
end
