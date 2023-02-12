cask "yandex" do
  arch arm: "&arch=arm64"

  version "23.1.2"
  sha256 :no_check

  url "https://browser.yandex.ru/download/?os=mac#{arch}&full=1",
      user_agent: :fake
  name "Yandex.Browser"
  desc "Web browser"
  homepage "https://browser.yandex.ru/"

  livecheck do
    url :url
    strategy :header_match do |headers|
      match = headers["location"].match(/(\d+)_(\d+)_(\d+)/i)
      next if match.blank?

      "#{match[1]}.#{match[2]}.#{match[3]}"
    end
  end

  auto_updates true

  app "Yandex.app"
end
