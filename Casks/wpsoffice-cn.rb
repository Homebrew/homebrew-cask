cask "wpsoffice-cn" do
  version :latest
  sha256 :no_check

  # refer: https://github.com/Homebrew/homebrew-cask-versions/blob/2bf0f13dd49d263ebec0ca56e58ad8458633f789/Casks/vlc-nightly.rb#L5L10
  # Get the latest download link
  url do
    require "open-uri"
    URI("https://www.wps.cn/product/wpsmac/").read.scan(/data-href="([^"]+.dmg)"/).flatten.first
  end
  name "WPS Office China Edition"
  name "WPS Office 中国版"
  desc "All-in-one office suite"
  homepage "https://www.wps.cn/product/wpsmac/"

  auto_updates true
  conflicts_with cask: "wpsoffice"
  depends_on macos: ">= :sierra"

  app "wpsoffice.app"

  uninstall quit: "com.kingsoft.wpsoffice.mac"

  zap trash: [
    "~/Library/Application Scripts/com.kingsoft.wpsoffice.mac",
    "~/Library/Saved Application State/com.kingsoft.wpsoffice.mac.savedState",
    "/private/var/folders/*/*/*/com.kingsoft.wpsoffice.mac",
    "/private/var/folders/*/*/*/com.apple.WebKit.Networking+com.kingsoft.wpsoffice.mac",
    "/private/var/folders/*/*/*/com.apple.WebKit.WebContent+com.kingsoft.wpsoffice.mac",
    "~/Library/Containers/com.kingsoft.wpsoffice.mac",
    "~/Library/Group Containers/*.wpsoffice",
  ]
end
