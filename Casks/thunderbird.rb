cask "thunderbird" do
  version "102.7.0"

  language "cs" do
    sha256 "fa43f09847c66c23dc9487cb5d4e491aa3cebbde91f7c0cd5d06f7bd8254418c"
    "cs"
  end
  language "de" do
    sha256 "567ec2c58092f993770a5b0321dc458baba28a906555cf63b83c2c46e8eb90f7"
    "de"
  end
  language "en-GB" do
    sha256 "2ed9e17ef586b57560ae19b7978b1cd970c00b7ebc1e497cf7b3f633b54eebd0"
    "en-GB"
  end
  language "en", default: true do
    sha256 "50b4d80d79ba5282ebac1b65ca1e5702e9e3f92e7f6618761115f1f4c0ca5311"
    "en-US"
  end
  language "fr" do
    sha256 "6e7a1166f671ef721a4db120c7082b77b3f0dc55f1272484eb6c2d626d11afeb"
    "fr"
  end
  language "gl" do
    sha256 "b5247aaf1119f3f333f9ddb2fa4ef282743592220b52b72b549019970f95e3db"
    "gl"
  end
  language "it" do
    sha256 "2f59408cfacf8f7824b8afe28bdbf458ae6b82f7719e8c3a394fd822d5fb0bed"
    "it"
  end
  language "ja" do
    sha256 "8977af1c4d3ab0e6f04c21d40118817866ff13edec3799079a06fe9fdc4374ce"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "5c721ded6266eb9a6d916a0f5a61532b7a4f6856bc7aad7427c58eaed84a5daa"
    "nl"
  end
  language "pl" do
    sha256 "fc798c41ea9a94590b705c8990a05521570aa621f8de3d0d0eba10c24f550149"
    "pl"
  end
  language "pt" do
    sha256 "5b29e2b4a80836ba43d4e043818392e6d3b8e1dc42c1844eb4024cdb8731c3ac"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "2b7057074aad82e27216b8f9b2a9db068e2ea80411f4070a4a47592cd366e1dd"
    "pt-BR"
  end
  language "ru" do
    sha256 "25b1121763ebd138c445412c1f0d30fa31e8b86371e8bb939cf136a636b7f703"
    "ru"
  end
  language "uk" do
    sha256 "97911a25070617c8e533b3a89c8cc89af30a5bc76227059eb3672e488489f126"
    "uk"
  end
  language "zh-TW" do
    sha256 "b885d65599af3d206943067eaee394857b54a4c4cb7815c13771708b14d439cb"
    "zh-TW"
  end
  language "zh" do
    sha256 "344c688d414f7e36fb344cffdbfeabfc78b16d3849ba9d356c8afc4c174c31f0"
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
