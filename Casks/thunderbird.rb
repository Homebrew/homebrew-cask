cask "thunderbird" do
  version "78.3.1"

  language "cs" do
    sha256 "4456c1478ee271ddd5ec338ae9fc9c81aad1ce4cc262e8319c2fef3caecd9efd"
    "cs"
  end
  language "de" do
    sha256 "0ca0c39347186a18d5f0b1c612ceac1610e8456c6b3332c2793dab795e5c5a6c"
    "de"
  end
  language "en-GB" do
    sha256 "476d057f3c73c0b4fcf61ad205e0f51892f7d63a3c00a099e2c76fed50ffc6c3"
    "en-GB"
  end
  language "en", default: true do
    sha256 "688804c352433b0d2ece62e9e9f34d151f2690a08ad2d5e8fe887cdee870683c"
    "en-US"
  end
  language "fr" do
    sha256 "ecc22d4803a6c23a756691477b9b36a75115d8094ae9ce1b797313716b1747f4"
    "fr"
  end
  language "gl" do
    sha256 "2e527e6753b4d24d53ad5d029d23d1ee107c5d149dcf055da3096b8399835df2"
    "gl"
  end
  language "it" do
    sha256 "67fe8b217cc2749cd46ab34f3aa9d02d193378fa101b63093e793f08618365c1"
    "it"
  end
  language "ja" do
    sha256 "e4394c516c56ec7db0ec8945ee36ea8b57bbab04f9da247dd15cc13176198dd0"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "113d48e5d7ce8d76b0e4e4d072ac74260658de65bc4a70b875677527ed63892f"
    "nl"
  end
  language "pl" do
    sha256 "e6baf7a9ea93a1c4027f2676b4e0547ac68d971af14d150c70fb3dca727beb6a"
    "pl"
  end
  language "pt" do
    sha256 "5f92e8adcfbc1ef8213bcb3f4e179a3b2fc819990ee949d9870df54d62237e17"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "03791abc1f2468b5c1fa5b3ab58ad9811a3d4a8f5d18e6b004aa2e633d453671"
    "pt-BR"
  end
  language "ru" do
    sha256 "414a2eeda2b336027924f6f624b542c8b766ebb15833134c971e040557a38bbc"
    "ru"
  end
  language "uk" do
    sha256 "edc21aa383e811c1d1a820c78008a361b31407a1593f652c917d51daf918dd28"
    "uk"
  end
  language "zh-TW" do
    sha256 "c05142193e3a789b7021bb353abb80271552fb1265c4f68ce6aaf74b03757606"
    "zh-TW"
  end
  language "zh" do
    sha256 "e81afe17eba678ee56ae30d23360e77b9eb4ea27b51e22a5075abf5921165349"
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
