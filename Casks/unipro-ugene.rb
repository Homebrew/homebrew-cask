cask "unipro-ugene" do
  version "44.0"
  sha256 "86c0f5726d084ffa9abb6d60f9069f1e6c42cbe1aa04fcb2148f4b54ed96aa7d"

  url "https://github.com/ugeneunipro/ugene/releases/download/#{version}/ugene-#{version}-mac-x86-64.dmg",
      verified: "github.com/ugeneunipro/ugene/"
  name "Ugene"
  desc "Free open-source cross-platform bioinformatics software"
  homepage "https://ugene.net/"

  app "Unipro UGENE.app"

  zap trash: [
    "~/Library/Preferences/com.unipro.UGENE.plist",
    "~/Library/Preferences/net.ugene.ugene.plist",
  ]
end
