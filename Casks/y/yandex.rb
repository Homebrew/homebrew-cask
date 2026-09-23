cask "yandex" do
  arch arm: "Arm64"

  on_arm do
    version "26.8.3.1016,117434"
    sha256 "d04a2c7f338dfec0d5a1de20854b6702fb278682e7b7d91994a99f626c787d93"
  end
  on_intel do
    version "26.8.3.1020,117474"
    sha256 "bd8f8e295b22920bedfa748db9de988f42389987d6510f9f924c77a5d5f76ebf"
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
