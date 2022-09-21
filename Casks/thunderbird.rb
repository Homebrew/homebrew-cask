cask "thunderbird" do
  version "102.3.0"

  language "cs" do
    sha256 "7b07238dd5f4d444e4e8d774d94d1f8af3fc5c80ba5214d54f35ec622be165d8"
    "cs"
  end
  language "de" do
    sha256 "0610f57d2780cc97dda4b0c333145fbfe87db5b9b2c9cf181a1b2fd8f0ba4207"
    "de"
  end
  language "en-GB" do
    sha256 "8ca4a9199e3c8c26ed2e3faf6a5e0ed0a13ce13f8a51ed73cc60b5d1377a44e2"
    "en-GB"
  end
  language "en", default: true do
    sha256 "3edc5b8128d4afb15a0b0db863ba7336879a0a0a56b655571575ae066bff7b87"
    "en-US"
  end
  language "fr" do
    sha256 "09cd1bd9ffa89d4f441c40c57f91d569a4fb5b49f7067363c123df94e3e78c47"
    "fr"
  end
  language "gl" do
    sha256 "28b8ccfcef1583de96c39b3c3d5690f705e972290d83899d8ffd6b4956f34e79"
    "gl"
  end
  language "it" do
    sha256 "5334eab1e26a7f174cf91ec8ff7ca9a4fbdb72c48ddd1c432bd9ca4730665410"
    "it"
  end
  language "ja" do
    sha256 "7964a1a999d81c9be2eb0e0fba9a426f2d26fcb2acea61df1f432f64ec006f07"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "d9c74ab8e5375118d8e1b8904d3237773787a65678783ffe47a226ba18092eef"
    "nl"
  end
  language "pl" do
    sha256 "c6e33a6c9225c9bc10507b985b35482b95d2fb2d6dd59da0cd144de729ec6426"
    "pl"
  end
  language "pt" do
    sha256 "2ef01c9d7709aa48c9cad49e814920efa1c3e89ebb590014b694de1bc5582a96"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "0a2efdd3395f112828210c154cc69fb3da984a9d456bed4d6e2914641467f22a"
    "pt-BR"
  end
  language "ru" do
    sha256 "8e4fb3e9aebd2284fb744622786a5e6892957b14b56eca72b34e901830dc6685"
    "ru"
  end
  language "uk" do
    sha256 "a78c4e14d665969b129867ffb22e724613462792f7459dc85671dc58d7009ddd"
    "uk"
  end
  language "zh-TW" do
    sha256 "871f32eb98fded4d221d8da9c390e0ee870d909d8a911a53a6eefe5a02a5cbca"
    "zh-TW"
  end
  language "zh" do
    sha256 "58c1b18abc963626077102864aa9f1737817e9aabdad86920cb1846ace99c377"
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
