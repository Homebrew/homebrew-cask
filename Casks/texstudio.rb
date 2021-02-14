cask "texstudio" do
  version "3.0.5"
  sha256 "ff057284eb39d2d814e5ab37da9160afd9522a53f4bdc97afd87d74a9ebc0bff"

  url "https://github.com/texstudio-org/texstudio/releases/download/#{version}/texstudio-#{version}-osx.dmg",
      verified: "github.com/texstudio-org/texstudio/"
  appcast "https://github.com/texstudio-org/texstudio/releases.atom"
  name "TeXstudio"
  desc "LaTeX editor"
  homepage "https://texstudio.org/"

  depends_on macos: ">= :sierra"

  app "texstudio.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/texstudio.sfl*",
    "~/Library/Preferences/texstudio.plist",
    "~/Library/Saved Application State/texstudio.savedState",
  ]
end
