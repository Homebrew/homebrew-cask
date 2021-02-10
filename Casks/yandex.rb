cask "yandex" do
  version "20.11.0.918,0.918"
  sha256 :no_check

  url "https://download.cdn.yandex.net/browser/yandex/ru/Yandex.dmg",
      verified: "yandex.net/"
  name "Yandex.Browser"
  desc "Web browser"
  homepage "https://browser.yandex.ru/desktop/"

  app "Yandex.app"
end
