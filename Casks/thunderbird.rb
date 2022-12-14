cask "thunderbird" do
  version "102.6.0"

  language "cs" do
    sha256 "8f6e174af4bd0d202db6a8f3974dba894336c43f3e4786d810d26570484df78a"
    "cs"
  end
  language "de" do
    sha256 "f5b26a01dd28b65fd4a7f4453bc86eb3b4c2e5cc2bafafb0847e4eb9a2bfbded"
    "de"
  end
  language "en-GB" do
    sha256 "f96ec331b97baa19d748abc735639a1f43271c77275dbbc1509178797b96ac8e"
    "en-GB"
  end
  language "en", default: true do
    sha256 "d868ad0e611e7fd85307e4a3a81678e760835a0eb255861d17ef15fe2111d8e1"
    "en-US"
  end
  language "fr" do
    sha256 "541c3f9bcf79863d4290a0f9fff66764a770ad51203642e880ab29554d3f1657"
    "fr"
  end
  language "gl" do
    sha256 "d665852196f8fd677788bf8e0ac37d6d7a6383e098b1e72188e153b693151ab5"
    "gl"
  end
  language "it" do
    sha256 "c6d4bca732f2d88767a40b5cfd6ab14338e3f2c855774de2c52399a340808f99"
    "it"
  end
  language "ja" do
    sha256 "2a8bfe72144b13ec29a25b532f0c02426f5491e7b0a1e74ae33decb6c46eae23"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "84539e937a0bd490b3d60013c42cd70fb12a8ad23df6582e8dea7532e3900400"
    "nl"
  end
  language "pl" do
    sha256 "cc6b8b995f0520673a09e0c5b56ef9fa45d983b454c82eed1800bde786de1294"
    "pl"
  end
  language "pt" do
    sha256 "3c2ec314a691c86d09cb2dc151a57cde49819f80ca8d4e9d8c75cdf284cc7e55"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "7bb4f8b128afcbd310cdf73eec0d6622f2942df69b90c6d3bd8353db7d8b966e"
    "pt-BR"
  end
  language "ru" do
    sha256 "926d1aa17b7d033b2a76da1eddd148e5264e5e0139667a40eaf3ebebf8a68bc6"
    "ru"
  end
  language "uk" do
    sha256 "72bb4c8940df075ecd4ba3ba03d5d4298cce16ea4ed1030edde300a3c3615a11"
    "uk"
  end
  language "zh-TW" do
    sha256 "474a31a3b5bcdbf8dca51ad07960d5e555c02d4e1f8ba20a95c098855c5b06de"
    "zh-TW"
  end
  language "zh" do
    sha256 "97867356563dcb42e24283f79e2fc2bc26bfb5e668197e7575691358d92964ee"
    "zh-CN"
  end

  url "https://download-installer.cdn.mozilla.net/pub/thunderbird/releases/#{version}/mac/#{language}/Thunderbird%20#{version}.dmg",
      verified: "download-installer.cdn.mozilla.net/pub/thunderbird/"
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
