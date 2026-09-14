cask "yandex" do
  arch arm: "Arm64"

  on_arm do
    version "26.8.0.1829,116215"
    sha256 "942e74a99ad7cd8dd8ad920cc0e0b162344a6f8abe39f8ad3266d627d527880a"
  end
  on_intel do
    version "26.8.0.1822,116128"
    sha256 "3777b39a02d69a78bff17a82229ca9a5258a9179d22cab872d564fb65ab93ab1"
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
  depends_on macos: :monterey

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
