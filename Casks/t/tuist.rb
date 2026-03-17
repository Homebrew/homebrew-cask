cask "tuist" do
  version "4.159.1"
  sha256 "42d883f70820d09566748f2855abb2c53a02851e4d747e5d20bb2009fee07888"

  url "https://github.com/tuist/tuist/releases/download/#{version}/tuist.zip",
      verified: "github.com/tuist/tuist/"
  name "Tuist"
  desc "Create, maintain, and interact with Xcode projects at scale"
  homepage "https://tuist.io/"

  binary "tuist"

  zap trash: "~/.tuist"
end
