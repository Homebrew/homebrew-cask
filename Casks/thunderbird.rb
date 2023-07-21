cask "thunderbird" do
  version "115.0.1"

  language "cs" do
    sha256 "821d7149f313e818e6bbbcbbeadc67b0e6b25eece6f488ad545c09168dc71a6d"
    "cs"
  end
  language "de" do
    sha256 "2980044dc79fb0cc39b0b3edddd924bde97c7715414ae2d31b005e767521246c"
    "de"
  end
  language "en-GB" do
    sha256 "9f78e49b7be2a0a69d0772c921d49031eeebb41386977ae172ddf710b61207ac"
    "en-GB"
  end
  language "en", default: true do
    sha256 "1117a7d040b1bb2b68ed8dfc136c407bbc212e02f0708ed9229874fbf5df3820"
    "en-US"
  end
  language "fr" do
    sha256 "4c71aebf365e876de38b48d0a5dc80bc46fcc76da75e065552102f6ff9249580"
    "fr"
  end
  language "gl" do
    sha256 "52a88eddddb3a42120b54cd231935531e03121022f885a1ddf84a5faee6371cb"
    "gl"
  end
  language "it" do
    sha256 "3f46b2008aa15120d8483761398ad7efa8fd1e228b1159b1faae9c5210bf2582"
    "it"
  end
  language "ja" do
    sha256 "425767dad809af138b9e78e3bc2dcdf520a6c0d13caec8c5668ba0047e4f22ca"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "6932c072780924a183c0a25f862b11083b40913e5997a05f9aaf1ac32ea055d0"
    "nl"
  end
  language "pl" do
    sha256 "d6c5ae452e91d719b3cf46b89876a0715aca02c377ecfe2f5e2d16b6bae25b92"
    "pl"
  end
  language "pt" do
    sha256 "2a6c5bc98986b99c7e0dd23166e04e6019604b83336ec4f0a72720a72dec9f0b"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "71910b5a2a28d78f0e779606b1c2a075cd6f6a1e000343fb48279f8f81dbbd36"
    "pt-BR"
  end
  language "ru" do
    sha256 "4db150a930f3b530f5e61b769f1841baee348958e019e41d03e89da7dc7e0e1b"
    "ru"
  end
  language "uk" do
    sha256 "4b17325f0890eea7b312f1cd130ff1d491c1aacef659f925386ab1e30c748413"
    "uk"
  end
  language "zh-TW" do
    sha256 "de59a4384cd4dc7253204fc9d4071de4d5115801c5e25931ca0fbb2d5235fb98"
    "zh-TW"
  end
  language "zh" do
    sha256 "7fe1310c3e4b6f35fbd6abd47ce69f8e55c2d10e288fbd467a2e03c08c603544"
    "zh-CN"
  end

  url "https://download-installer.cdn.mozilla.net/pub/thunderbird/releases/#{version}/mac/#{language}/Thunderbird%20#{version}.dmg",
      verified: "download-installer.cdn.mozilla.net/pub/thunderbird/"
  name "Mozilla Thunderbird"
  desc "Customizable email client"
  homepage "https://www.thunderbird.net/"

  livecheck do
    url :homepage
    regex(/href=.*?thunderbird[._-]v?(\d+(?:\.\d+)+)[._-]SSL/i)
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
