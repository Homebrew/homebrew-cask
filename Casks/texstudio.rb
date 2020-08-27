cask "texstudio" do
  version "3.0.0"
  sha256 "f0a6e5427a61b3f2b8f0b01d04f8cb6cf2946958ab66cba6b38df9a380b2558a"

  # github.com/texstudio-org/texstudio/ was verified as official when first introduced to the cask
  url "https://github.com/texstudio-org/texstudio/releases/download/#{version}/texstudio-#{version}-osx.dmg"
  appcast "https://github.com/texstudio-org/texstudio/releases.atom"
  name "TeXstudio"
  homepage "https://texstudio.org/"

  depends_on macos: ">= :sierra"

  app "texstudio.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/texstudio.sfl*",
    "~/Library/Preferences/texstudio.plist",
    "~/Library/Saved Application State/texstudio.savedState",
  ]
end
