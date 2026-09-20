cask "yandextelemost" do
  version "3.0.1,9940"
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

  # Renamed for consistency: app name is different in the Finder and in a shell.
  app "Yandex.Telemost.app", target: "Yandex Telemost.app"

  uninstall quit: "ru.yandex.desktop.telemost"

  zap trash: [
    "~/Library/Application Support/Yandex.Telemost",
    "~/Library/Preferences/ru.yandex.Telemost.plist",
  ]
end
