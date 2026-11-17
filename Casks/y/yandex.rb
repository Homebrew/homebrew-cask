cask "yandex" do
  arch arm: "Arm64"

  on_arm do
    version "26.11.0.2030,121941"
    sha256 "eb93a27d746068c5519ac9d713fea5e3c32585851624f58c7272f796c372af99"
  end
  on_intel do
    version "26.11.0.2022,121956"
    sha256 "55730453bd78e738997d4b6467a1f59c275860ce3de1fa51d698cd911c9e9cb8"
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
