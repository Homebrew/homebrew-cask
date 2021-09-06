cask "thunderbird" do
  version "91.0.3"

  language "cs" do
    sha256 "f7d5d8d6e9ecd6dafd34a48f50a867e9bb0577abc0df061cf5400403bd7d2ecf"
    "cs"
  end
  language "de" do
    sha256 "439a41f60a12f1a4ff8c5884e01d27e906219ba4d099cd5ed88942812b93544e"
    "de"
  end
  language "en-GB" do
    sha256 "c82a5b90606e3a774fb96848cdde810ac073e39e811cde0656a52c47e2a23276"
    "en-GB"
  end
  language "en", default: true do
    sha256 "bd0a51cdb0f257b4b8f0ff7acc2851855ad8b0a9581f863b778992abb232bc70"
    "en-US"
  end
  language "fr" do
    sha256 "49b12a94a30b37565f6ee4096cd86eb9e259607a2ec9e3ffb51ae8034ce9f0ce"
    "fr"
  end
  language "gl" do
    sha256 "9ef0828bc452585aa776897cb0d1247fedcf2762e22c7f865c21f5ef49fde1da"
    "gl"
  end
  language "it" do
    sha256 "682efc68db7a39a562a381ed175c6a3f5e233c5a4603eeba6bd8b12421cd6db9"
    "it"
  end
  language "ja" do
    sha256 "30b31873389dcf406c50b7f0dd8adcfa7ffeacf70002384ccaa522bed5fb7fe0"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "91b1fcd1da5a36530b9ab9f2f42ddad5d80b4129fd4ea80c60c9547f119715a5"
    "nl"
  end
  language "pl" do
    sha256 "a711c01910d516b134216f3ad04fe308ac382590fbbc13a6c5f2f59c3a47697a"
    "pl"
  end
  language "pt" do
    sha256 "95d66245c1591514660d8be634b0970446bd6fe9d188b6894205b9c64e858d1c"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "5c855b7c90929f976a5943fd8faa0e5e837bb48f237afd5967e86d534de8164b"
    "pt-BR"
  end
  language "ru" do
    sha256 "13125ff312ccb628feb68a6075be48e7126078003cdacb24654d203b2abe6661"
    "ru"
  end
  language "uk" do
    sha256 "4b8ab9602be38803aae4c0a62427da733b0b71ab4fe437665fec420f58834e31"
    "uk"
  end
  language "zh-TW" do
    sha256 "768cda0d7b122cd4d8f6e68809d9d4a4f9c8e11825a84a62305d724389300d6b"
    "zh-TW"
  end
  language "zh" do
    sha256 "fc9eb9abc993e6777de0380707deb789ec29cbe7a2d9392dbe2c4aa47f812fc0"
    "zh-CN"
  end

  url "https://ftp.mozilla.org/pub/thunderbird/releases/#{version}/mac/#{language}/Thunderbird%20#{version}.dmg",
      verified: "ftp.mozilla.org/pub/thunderbird/"
  name "Mozilla Thunderbird"
  desc "Customizable email client"
  homepage "https://www.thunderbird.net/"

  livecheck do
    url "https://download.mozilla.org/?product=thunderbird-latest-ssl&os=osx"
    strategy :header_match
  end

  auto_updates true
  conflicts_with cask: "homebrew/cask-versions/thunderbird-beta"

  app "Thunderbird.app"

  zap trash: [
    "~/Library/Thunderbird",
    "~/Library/Caches/Thunderbird",
    "~/Library/Saved Application State/org.mozilla.thunderbird.savedState",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.mozilla.thunderbird.sfl*",
    "~/Library/Preferences/org.mozilla.thunderbird.plist",
  ]
end
