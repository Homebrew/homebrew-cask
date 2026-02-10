cask "yandex" do
  arch arm: "Arm64"

  on_arm do
    version "25.12.3.1119,99765"
    sha256 "8dbc64ad97c5356cb6c232893b08faf71319bc7db983c5b6ab2e203e3e956076"
  end
  on_intel do
    version "25.12.3.1120,99787"
    sha256 "7634f232b294a189ab14f0d57f73c7331342cf678c0acc2e9ba5c943447450d8"
  end

  url "https://download.cdn.yandex.net/browser/update/#{version.csv.first.dots_to_underscores}_#{version.csv.second}_m_s_r/yandex.dmg",
      verified: "download.cdn.yandex.net/"
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
  depends_on macos: ">= :monterey"

  app "Yandex.app"

  zap trash: [
    "~/.yandex",
    "~/Library/Application Support/Yandex",
    "~/Library/Caches/Yandex",
    "~/Library/Preferences/ru.yandex.desktop.yandex-browser.plist",
    "~/Library/Saved Application State/ru.yandex.desktop.yandex-browser.savedState",
  ]
end
