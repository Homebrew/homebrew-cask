cask "thunderbird" do
  version "78.4.1"

  language "cs" do
    sha256 "c03bd4229c82ad3b4f48714e49d02aa579a1b8770b9b818fb3afcd653011f25b"
    "cs"
  end
  language "de" do
    sha256 "477be05c710592d7e404e2c92a8e93cc5ac196ad84836d0c6484d799bee9309a"
    "de"
  end
  language "en-GB" do
    sha256 "d2253adc52b141d8423db53eeed2f474f4b2cd8a45489e8762620f13b585b185"
    "en-GB"
  end
  language "en", default: true do
    sha256 "84e35e664cac7bad7a2764458727ea017a714cb5fc68365e53d5e345ce310a8d"
    "en-US"
  end
  language "fr" do
    sha256 "9e9bdd0321e248645b45f3a3ced1aab8bae8874942a2e88a776270f6d8330449"
    "fr"
  end
  language "gl" do
    sha256 "814b87cfeab0a01995fd447266cee74c714b5548ec297dd55f82020538e8a292"
    "gl"
  end
  language "it" do
    sha256 "c049982ebcdd53af1acd0987e4d619e36be0861320a7e94fd34c885614190361"
    "it"
  end
  language "ja" do
    sha256 "4c45915c0094c02f8903a058558612837be10ceefca480c5cdf61b43ac28515c"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "61cac29b175133de0c9ff725bf4eb63badd6719340c25d0d092343d723a44477"
    "nl"
  end
  language "pl" do
    sha256 "4cb0c90fa89ccbc9d458659aa27705c8a308f8b5ca3c0471938e6412de5b2334"
    "pl"
  end
  language "pt" do
    sha256 "dd01d1eee2b119321c8610442b4aab27e88516b44fbb2eef33e51c0c6eba8c52"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "83ce2e5791549ca2a912e30e9787e7d60283c92451a5f0ead7fc7c0562489e83"
    "pt-BR"
  end
  language "ru" do
    sha256 "a29da4a82b919370cc9c4c5f12e0c34a3d8938fc3dd29577a6d1a7b18924a3d4"
    "ru"
  end
  language "uk" do
    sha256 "933dbf5f03c8fabf583755620aa22b99e1c8eac9dec19e47dc8cf15adb10f21e"
    "uk"
  end
  language "zh-TW" do
    sha256 "0b52242ab638cfdbb13f67daf24161e48bd1cd75c72268abe6430b85d500ad9b"
    "zh-TW"
  end
  language "zh" do
    sha256 "54a7ce1ed24b215a5a5d0a495ef0af9c845c402c3932371c39ec8d03f074105b"
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
