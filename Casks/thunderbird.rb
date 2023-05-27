cask "thunderbird" do
  version "102.11.2"

  language "cs" do
    sha256 "67c290755de643d2bd631063e340269141f7d42f98f6f8f58bf8ddefc839b9ee"
    "cs"
  end
  language "de" do
    sha256 "a457491815ad72de2e5a11fa6ec4e1848495196b3d2cc3175afe9b79f41829d3"
    "de"
  end
  language "en-GB" do
    sha256 "a0bf94265a5957cd851635f12eee9bfea149c6b344ff914a7f708336df587216"
    "en-GB"
  end
  language "en", default: true do
    sha256 "8986e5a455aca9f98a0da8fc3faa2cfeae728fe4414f6f7082a8f0679dda516e"
    "en-US"
  end
  language "fr" do
    sha256 "2182a5c6c5b046bfe535acf756cc6ba5829d31835fd298ad94d8bfeebe9cd4fa"
    "fr"
  end
  language "gl" do
    sha256 "acde081a79874067d2ec46aadcb9e0c65458ad73655f574d74b4c6fc1ba33dc4"
    "gl"
  end
  language "it" do
    sha256 "f6fcdee550e860cf04836ac73ea4ec127501be59d896710063cdb5f7db6d94a3"
    "it"
  end
  language "ja" do
    sha256 "5176e7b6ef147ca16269e520521836f69c0826b4c38529f4fad22fece49bac59"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "9d4a287c247fa4d6b1f90fdaf56af54ead8581c0021fac77886c07ca44da9909"
    "nl"
  end
  language "pl" do
    sha256 "be33ec2ec2b82943d52f16b9131c5da816b7d056cdd01b3e8771fc14cf5e5988"
    "pl"
  end
  language "pt" do
    sha256 "752b43f86eaa8e6c677d05bcd929ee76e37bb6564c76905f026f02d72bcb5d0c"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "6522c2e45f9dc2c47ff21745932014c17c79c36e0527ff4e2eff5f71bc6cd9c4"
    "pt-BR"
  end
  language "ru" do
    sha256 "4133efaf1eeaa1d180bd3c1383d1b7064dbd13d6c33220fdf46c5f0411db5eaa"
    "ru"
  end
  language "uk" do
    sha256 "abe796f52f1add57175b093231264110b58efebd9b7d7b1dd1d51daf6d7e7fba"
    "uk"
  end
  language "zh-TW" do
    sha256 "79225990d4cffd6100ab2d40d56e17dfc09a12d7a1d42a1fbc833b43c1d01e1c"
    "zh-TW"
  end
  language "zh" do
    sha256 "0dd25e708d0acca9873cd835999c22a602d6e5570e47dacf8ee38449c7026941"
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
