cask "yandex-disk" do
  version "3.2.24,3022"
  sha256 :no_check

  url "https://disk.yandex.ru/download/Yandex.Disk.dmg/?instant=1"
  name "Yandex.Disk"
  desc "Cloud storage"
  homepage "https://disk.yandex.ru/"

  livecheck do
    url :url
    strategy :extract_plist
  end

  app "Yandex.Disk.2.app"

  zap trash: [
    "~/Library/Application Support/Yandex.Disk.2",
    "~/Library/Preferences/ru.yandex.desktop.disk.screenshots.plist",
    "~/Library/Preferences/ru.yandex.desktop.disk2.plist",
  ]
end
