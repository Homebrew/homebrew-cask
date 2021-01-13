cask "thunderbird" do
  version "78.6.1"

  language "cs" do
    sha256 "9fa3cf241cf1c2af9a6b60158b5e69e377afd49a9d53cce279009333ee6cfd50"
    "cs"
  end
  language "de" do
    sha256 "e816707acd9b16045968cea2c84deaab11d909c704f136a832b9de0838e8b12a"
    "de"
  end
  language "en-GB" do
    sha256 "0e0285f539c10688804f6a60cbd1187b883759b1eafa9d40c15da1f13bc88702"
    "en-GB"
  end
  language "en", default: true do
    sha256 "75f36af0694706258e717d293d5f4243bd70a8b1e0e02afac9670cacebda5cc2"
    "en-US"
  end
  language "fr" do
    sha256 "8ca8948ba11cf3780cd55d02ce8e7594da7e07dd0d9b4daaa2beb8aeb90eeadf"
    "fr"
  end
  language "gl" do
    sha256 "2e9984d0400bc26f5c323b9789df5d603e72592bb434f290a32d2782c4e67841"
    "gl"
  end
  language "it" do
    sha256 "4f6622e779aa888a60983b44233113809362d9256ae86c4785438d64d27ad5a4"
    "it"
  end
  language "ja" do
    sha256 "171c20715c03ac25e580b31ae3c6331cd622ed8f8364dc1dbea2e927b69dcf9a"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "38be5f71e08eed33eb5b1c232668d5f592208447df9bffa0d2f695492b459f1e"
    "nl"
  end
  language "pl" do
    sha256 "6aa8c70a3f6ef28a2d4aa670e7578e7a1fe9916e58182a4e015f9f90630277d6"
    "pl"
  end
  language "pt" do
    sha256 "0e1efff42b5cb5bc75bbf32298a6d30d4227b72576001a0d6ae900effca17d1a"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "211e8e6a1749fd88d8a0e7f07c0eac053f24d2a46c649d0fb30a3df87200fb38"
    "pt-BR"
  end
  language "ru" do
    sha256 "162e665b7f427bbebad6de5732ca3efb11f2b23b35fce090fa1cf0fa9467cef8"
    "ru"
  end
  language "uk" do
    sha256 "2fcd95e1b46a783b6d49205089f13fa9664b95d45f8fb7673f57845e813c99da"
    "uk"
  end
  language "zh-TW" do
    sha256 "37495062da4c98a91116a4314120d78f5784658999576e01bc276ae0960d7407"
    "zh-TW"
  end
  language "zh" do
    sha256 "a35069dc715bce4e3957347a11b096b126c9d8ebdb63099f6a4b3dc9917d3ab8"
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
