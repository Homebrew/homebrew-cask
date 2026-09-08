cask "yandextelemost" do
  version "2.39.5,9385"
  sha256 :no_check

  url "https://telemost.yandex.com/download-desktop"
  name "Yandex Telemost"
  desc "Yandex video calls and meetings platform"
  homepage "https://telemost.yandex.com/"

  livecheck do
    url :url
    strategy :extract_plist
  end

  depends_on macos: :monterey

  app "Yandex.Telemost.app"

  uninstall quit: "ru.yandex.desktop.telemost"

  zap trash: [
    "~/Library/Application Support/Yandex.Telemost",
    "~/Library/Preferences/ru.yandex.Telemost.plist",
  ]
end
