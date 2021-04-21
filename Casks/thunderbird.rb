cask "thunderbird" do
  version "78.10.0"

  language "cs" do
    sha256 "2536102d24defdcdc7bcabdd865d39b0ed995770c713609d194f85266fa3a6ed"
    "cs"
  end
  language "de" do
    sha256 "be91cdf0c9eb60d3a95a6247b27b5f47291c73a919454261a551ce959336b594"
    "de"
  end
  language "en-GB" do
    sha256 "224441e34621fdf6dcc6c3c5b8f8b3926914684d5bc0a48ec9e07e28104bd1c0"
    "en-GB"
  end
  language "en", default: true do
    sha256 "e2ccdb4be1a51739e39999c99cec7d35cbf43e827836bdf2e3df646f0709e865"
    "en-US"
  end
  language "fr" do
    sha256 "5c7c1738e4b0f9a94f4e6c904208425a99365f41c0e0f9b3cc990de28737832b"
    "fr"
  end
  language "gl" do
    sha256 "bd6808bf5f2e38816fc9e1ca5cd2aa4f2a1721648890be584b787c1a90ba3df6"
    "gl"
  end
  language "it" do
    sha256 "c2223dc286fd2891595f24ba464692423994a1aed3eaf5b6339bc006f62ea89a"
    "it"
  end
  language "ja" do
    sha256 "eb6630d297bce6ec3bbe817b83dfa423d110d061c0f4e1b69f95ecd2d33b8baf"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "1a49585997c22e8baae0782015d589adc186b1885a6fcf182926181f508c202f"
    "nl"
  end
  language "pl" do
    sha256 "675583cb4ab5c77750198244eda4dbf558ed696eda8a2a84038dd179493dc6ef"
    "pl"
  end
  language "pt" do
    sha256 "46e3762af7e3ce1061eccc6eb0ffd81c192aeaca3da7f3667be3fad14d862c3b"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "36c1f84f6ce0e1b25fbeee98c34cd4f3b13ac80c5da093224f046b34db1df3dd"
    "pt-BR"
  end
  language "ru" do
    sha256 "054e8a0532a03a428e99be701c340290ea4f7ac48fb20c95ee8578833b3a1001"
    "ru"
  end
  language "uk" do
    sha256 "27b62725e6e5cd9f205343291ab236fdbc752093aefcaa0cff9cd7e921f3157f"
    "uk"
  end
  language "zh-TW" do
    sha256 "6209dbfddfa1d7e7545ba86103b2c5fc887e2d0ba5af1d74095eddc49f8602ce"
    "zh-TW"
  end
  language "zh" do
    sha256 "179e883830bb360484657c73abd3612c691e7614be7a31a321daa62f5c75f473"
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
