cask "vidyo" do
  version "22.2.0.17850"
  sha256 "da00ed1a052c7b49100475825f440748c2cf8db516c374957cd082b57c98d952"

  url "https://client-downloads.vidyocloud.com/VidyoConnectInstaller-macosx-TAG_VCOND_#{version.dots_to_underscores}.dmg"
  name "Vidyo"
  homepage "https://vidyocloud.com/download.html?lang=en"

  livecheck do
    url :homepage
    regex(/https.*?VidyoConnectInstaller[._-]macosx[._-]TAG[._-]VCOND[._-]v?(\d+(?:[._]\d+)+)\.dmg/i)
    strategy :page_match do |page, regex|
      page.scan(regex).map { |match| match.first.tr("_", ".") }
    end
  end

  depends_on macos: ">= :sierra"

  app "VidyoDesktopInstaller.app/Contents/Resources/VidyoDesktop.app"

  uninstall quit: "com.vidyo.VidyoDesktop"
end
