cask "yandex" do
  version "21.3.3"
  sha256 :no_check

  url "https://download.cdn.yandex.net/browser/yandex/ru/Yandex.dmg",
      verified: "yandex.net/"
  name "Yandex.Browser"
  desc "Web browser"
  homepage "https://browser.yandex.ru/"

  livecheck do
    url :homepage
    strategy :page_match
    regex(/download__version.*?(\d+(?:\.\d+)*)/mi)
  end

  app "Yandex.app"
end
