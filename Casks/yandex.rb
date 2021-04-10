cask "yandex" do
  version "21.2.0.2458,0.2458"
  sha256 :no_check

  url "https://download.cdn.yandex.net/browser/yandex/ru/Yandex.dmg",
      verified: "yandex.net/"
  name "Yandex.Browser"
  desc "Web browser"
  homepage "https://browser.yandex.ru/desktop/"

  livecheck do
    url :url
    strategy :extract_plist
  end

  app "Yandex.app"
end
