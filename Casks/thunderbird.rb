cask "thunderbird" do
  version "91.5.0"

  language "cs" do
    sha256 "d090470a14883c03d07af43e5208879fd556c2a075c12fa2a9c62d62aac6b848"
    "cs"
  end
  language "de" do
    sha256 "e9df907ea0226eb9763628ed5be1e83d7f0bcd56191182005b3a471d25116004"
    "de"
  end
  language "en-GB" do
    sha256 "043482a51bcdb4d3ac6fa6699bd273ea356594642e5398ed62c4a5ce7e595574"
    "en-GB"
  end
  language "en", default: true do
    sha256 "eec20c96dd4c9f7217340be26e8c7535dda6225a21e5122f4a1a7967a176098a"
    "en-US"
  end
  language "fr" do
    sha256 "a18e472f5319132612f96fb5fcfb1c7e0ad57e5d4d6365700a0d394841f04000"
    "fr"
  end
  language "gl" do
    sha256 "af54a831471415ba075f6fd3ea649aa7e7e0367bb648408688fdd474e74abea6"
    "gl"
  end
  language "it" do
    sha256 "1bab72252ea334b96a47768a97b728e8dcabf293f193f04b4f1ad7b93566dd12"
    "it"
  end
  language "ja" do
    sha256 "3d761931c88d3e62b3d2c7c30cd5deb09e3ca372d651a29d8158e8ba60e3f90e"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "77f81fc0abf973eacf9ccf059ed72572f1cad3cb388892e8cd6b0df4f57512ec"
    "nl"
  end
  language "pl" do
    sha256 "8d84711eff7cb6b5db9e81cccee94547572ac4af282afccb5db1019b7105701e"
    "pl"
  end
  language "pt" do
    sha256 "36a3a5c33a7a36e7ff9f446babeeecbff9bc69ae99d5a1be20d9a564c5292b77"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "935c6745371550451d5912b1f74d6a9a56cfe7882921ba85931bcf3651f7d9d7"
    "pt-BR"
  end
  language "ru" do
    sha256 "e5467a11e1ab058afe3ab370256ecfbd78c573cf98b2e1dd183e2323c66534d3"
    "ru"
  end
  language "uk" do
    sha256 "c9e8b3ca1b9d714b26ce483a09c493a0902c5dd86ec9fc2ef201be21e12592db"
    "uk"
  end
  language "zh-TW" do
    sha256 "8e9d7540e85abf3f9126a4c1f620b675b11cfb31ceb4a0e5b637ff283f46dc66"
    "zh-TW"
  end
  language "zh" do
    sha256 "5635901a3e8abba8a201138d5085d22703119aaaf6a697eb75c2dc2acf8ff367"
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
  depends_on macos: ">= :sierra"

  app "Thunderbird.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.mozilla.thunderbird.sfl*",
    "~/Library/Caches/Thunderbird",
    "~/Library/Preferences/org.mozilla.thunderbird.plist",
    "~/Library/Saved Application State/org.mozilla.thunderbird.savedState",
    "~/Library/Thunderbird",
  ]
end
