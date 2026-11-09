cask "yandex" do
  arch arm: "Arm64"

  on_arm do
    version "26.10.0.1877,120611"
    sha256 "a9ebe2327aa7750d0d1e6d08af4412738086d87b20157fdbcaf259497972ef9e"
  end
  on_intel do
    version "26.10.0.1883,120628"
    sha256 "6ef30964678f37084f45fc0041a6f197b439e241410bb14f61694929099e4678"
  end

  url "https://download.cdn.yandex.net/browser/update/#{version.csv.first.dots_to_underscores}_#{version.csv.second}_m_s_r/yandex.dmg"
  name "Yandex.Browser"
  desc "Web browser"
  homepage "https://browser.yandex.ru/"

  livecheck do
    url "https://api.browser.yandex.ru/update-info/browser/yandex/mac-yandex.xml?manual=yes&version=0"
    regex(%r{/update/v?(\d+(?:[._-]\d+)+)[._-](\d+)}i)
    strategy :xml do |xml, regex|
      url = xml.elements["//item/guid#{arch}"]&.text&.strip
      match = url.match(regex) if url
      next if match.blank?

      "#{match[1].tr("_", ".")},#{match[2]}"
    end
  end

  auto_updates true
  depends_on macos: :ventura

  app "Yandex.app"

  uninstall quit: "ru.yandex.desktop.yandex-browser"

  zap trash: [
    "~/.yandex",
    "~/Library/Application Support/Yandex",
    "~/Library/Caches/Yandex",
    "~/Library/Preferences/ru.yandex.desktop.yandex-browser.plist",
    "~/Library/Saved Application State/ru.yandex.desktop.yandex-browser.savedState",
  ]
end
