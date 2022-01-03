cask "yandex" do
  version :latest
  sha256 :no_check

  url "https://browser.yandex.ru/download/?os=mac&full=1"
  name "Yandex.Browser"
  desc "Web browser"
  homepage "https://browser.yandex.ru/"

  app "Yandex.app"
end
