cask "thunderbird" do
  version "78.2.1"

  language "cs" do
    sha256 "f2a3d948e26c01cd7fe7571b9529aa1aed08c56e2c7006e5f8512ab2347ba8b0"
    "cs"
  end
  language "de" do
    sha256 "c4b50f382e2d2ce3d617f0e633be3c10e69f36686d1f2f1ab8ebd090c442e3dd"
    "de"
  end
  language "en-GB" do
    sha256 "77f44453948acb66aa8284a6567fbe91b2793ffe42f6fd16619330d911753b42"
    "en-GB"
  end
  language "en", default: true do
    sha256 "6b54919e06f5e60f9e7a559f6cbea49bc4a73d263bbcd156a13a7b6ff4ba626f"
    "en-US"
  end
  language "fr" do
    sha256 "f2f0d92d2a0c3a1daefff5fc3e24b422385df4fdb6eef907c8a09de273472cc4"
    "fr"
  end
  language "gl" do
    sha256 "ac3027afd1a2c40237efdd6e77307e9d2a6376a4fd5f4b177e2fdf3c1b98a5a4"
    "gl"
  end
  language "it" do
    sha256 "5e8a45e9810ba3aac4b05d0e7952ccea182b50f6dcaca3b13d70e4f71a53e161"
    "it"
  end
  language "ja" do
    sha256 "f8404edde3d8b47c1977b99e6b653a73328feee737e82593fbcfcabca620c450"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "8feb7d132fe648f6dc28035433c0f0096776a50d8c80d2629aba2171d24da291"
    "nl"
  end
  language "pl" do
    sha256 "a1f953b12dd0a4b2cd344d3a1486c7f6becc038270a3e777d4cb3428ac690534"
    "pl"
  end
  language "pt" do
    sha256 "36a5f99af25c2cd440191b7f2aa9c7031af3e53a13e9d440c8822af95707ebc3"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "9d5f8db04d59e6e9c05a5728f98f69123b8cf57ec7f0299068ad67ba545580f3"
    "pt-BR"
  end
  language "ru" do
    sha256 "f66aef59cc1cc7071d56b00c153b9495bf6ca4166d7381f937dc729a976387c0"
    "ru"
  end
  language "uk" do
    sha256 "c7eb3f4fb319633ee4beae443fc90c2441364a172a6f75f724c92a5d52154e80"
    "uk"
  end
  language "zh-TW" do
    sha256 "066dc5f141da2cee25a27570d1b70e56558ad303a884e8bf893cf283d35bf4b1"
    "zh-TW"
  end
  language "zh" do
    sha256 "034ce4fde88fe34db44527a8f40ce0c9dec1e61e0ee949c0dc489881dddbe2ed"
    "zh-CN"
  end

  # ftp.mozilla.org was verified as official when first introduced to the cask
  url "https://ftp.mozilla.org/pub/thunderbird/releases/#{version}/mac/#{language}/Thunderbird%20#{version}.dmg"
  appcast "https://www.thunderbird.net/en-US/thunderbird/releases/"
  name "Mozilla Thunderbird"
  desc "Customizable email client"
  homepage "https://www.thunderbird.net/"

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
