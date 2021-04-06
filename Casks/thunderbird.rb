cask "thunderbird" do
  version "78.9.0"

  language "cs" do
    sha256 "68274a5678a42627065061cff86a6cbf85c5560e48b5ed226da7abfb8d66cb1d"
    "cs"
  end
  language "de" do
    sha256 "8781757298a6a4d5fb86bca4ed40dbd79a72e8fcbdf988cf1683394107fc2cd2"
    "de"
  end
  language "en-GB" do
    sha256 "ed40030b5bb43b492a42813e135db38f2298567feb50231e622bc288b8de39df"
    "en-GB"
  end
  language "en", default: true do
    sha256 "14952fe2caf8e496587d7dc3fcbbda87dc1af35a4b27ba652cf49534d24db828"
    "en-US"
  end
  language "fr" do
    sha256 "b97e0bd7b35573cddb7d638dfc25b8f02d1aba2a95c1b962e8ad4cdc4a6c4f6e"
    "fr"
  end
  language "gl" do
    sha256 "565893c049c90dfbd5099bfd68ffc892125d5a84af1877f7814cc541a779ff81"
    "gl"
  end
  language "it" do
    sha256 "d919a67d7bbec433856df6465c76db1163fcaad1127058e3d873e4dc6b4dc8fa"
    "it"
  end
  language "ja" do
    sha256 "b0f6daf5fc484befd1563dabfe488ea2d764e415ccfccf737544b8b02d4574bf"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "61018e0d5b68cc4dd29119716b6d157029cdda2bb5afd5f08a261e9686bdd038"
    "nl"
  end
  language "pl" do
    sha256 "e4522f9911dfae5b4a9fc5430b28d4412edd2c283f3e6a13519c46fa7bf96ca9"
    "pl"
  end
  language "pt" do
    sha256 "1ac7ebc975e42899439ea6abaa1fed6c81e289293626b589c055caf52fb448c5"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "a2adaa61236b2f9e3f8e5523b4d42fd9f6cc2d4239fda97d4aa16a786ca6dcba"
    "pt-BR"
  end
  language "ru" do
    sha256 "b303aa066472cc8058bae0cac8160fc46743ba449a0b59dd2614e0a479ccea1f"
    "ru"
  end
  language "uk" do
    sha256 "72acce48cd6a542e226201e3413f622c52718f9130d13ea4ef32bbef5cf769b5"
    "uk"
  end
  language "zh-TW" do
    sha256 "3b7fd6c1bb5c56079d81535d82f8427a44ede1113bf8fae88131b46b519fa4d1"
    "zh-TW"
  end
  language "zh" do
    sha256 "27870a6b031bcd34c3f939c274db786a860345e272c2211bb41092c5bed9c666"
    "zh-CN"
  end

  url "https://ftp.mozilla.org/pub/thunderbird/releases/#{version}/mac/#{language}/Thunderbird%20#{version}.dmg",
      verified: "ftp.mozilla.org/"
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
