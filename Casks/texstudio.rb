cask "texstudio" do
  version "4.2.3"
  sha256 "d13b76cab7f93a63b815d476df47d8c5d187f377efd68d21f8d2384e382352bc"

  url "https://github.com/texstudio-org/texstudio/releases/download/#{version}/texstudio-#{version}-osx.dmg",
      verified: "github.com/texstudio-org/texstudio/"
  name "TeXstudio"
  desc "LaTeX editor"
  homepage "https://texstudio.org/"

  depends_on macos: ">= :catalina"

  app "texstudio.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/texstudio.sfl*",
    "~/Library/Preferences/texstudio.plist",
    "~/Library/Saved Application State/texstudio.savedState",
  ]
end
