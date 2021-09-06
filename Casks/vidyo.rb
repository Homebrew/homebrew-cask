cask "vidyo" do
  version "3.6.18.0009"
  sha256 "6f1d1dcc8e707befc07e3f251ecad007e027016f4203b71396c45384b9a1dd5e"

  url "https://client-downloads.vidyocloud.com/VidyoDesktopInstaller-macosx-TAG_VD_#{version.dots_to_underscores}.dmg"
  name "Vidyo"
  homepage "https://vidyocloud.com/"

  depends_on macos: ">= :sierra"

  app "VidyoDesktopInstaller.app/Contents/Resources/VidyoDesktop.app"

  uninstall quit: "com.vidyo.VidyoDesktop"
end
