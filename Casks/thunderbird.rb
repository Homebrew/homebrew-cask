cask "thunderbird" do
  version "102.4.0"

  language "cs" do
    sha256 "08e1bcf9cb862638267087aa3bf982b079ad482f77dc6cb4236af12d53db352f"
    "cs"
  end
  language "de" do
    sha256 "e7128ea9bc961f564ffaf5970484e323dc3465a00f48f00cc5839e7823e1c74c"
    "de"
  end
  language "en-GB" do
    sha256 "ddd2533d0caea3d71dc8b250736606984310e578d7a019c9d42bff7059c6e53e"
    "en-GB"
  end
  language "en", default: true do
    sha256 "ac3b5c0229667709ebdf9b3c42663151128d6f3571fa0bfe2710004f4c20ad94"
    "en-US"
  end
  language "fr" do
    sha256 "ef05c3e130cc5527d6869e906fa1008b5a1f1c6b1d2c947c72a72c83017a8e22"
    "fr"
  end
  language "gl" do
    sha256 "c6d0bdb5f70f352e997a25ec85fbd480f6dcb5ffaa77306b51dc355b9dce4321"
    "gl"
  end
  language "it" do
    sha256 "b508da15791686a7694356feb31b7e6d06aef8d15c8e8b5b9392665869fc51f5"
    "it"
  end
  language "ja" do
    sha256 "308aad726f3652d24d16546d0356ab3ef10aaa30b0f7d9e1760c3d1fae7cf517"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "f4534f2f32eb0e8184f0eff6754c11c21a40486623c370a11cff265885865aed"
    "nl"
  end
  language "pl" do
    sha256 "483fa997edfb722a2e9b4e3d8f576a0493d485b1db813f155c84ed37554503fc"
    "pl"
  end
  language "pt" do
    sha256 "db36139e7dae94bcf6c76076342d9610a955f7e1e0c92c32ee8525910ff5fcbe"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "4e048e0f59b49fd29a308ce084220c9fab32b5a164edcb97304b4e3dbe6c8e38"
    "pt-BR"
  end
  language "ru" do
    sha256 "1c97250167369774ee252f7ec6f508a77a1dd7cf7843d221542c97ba0cf95a2f"
    "ru"
  end
  language "uk" do
    sha256 "fd56b1b431132eb0541588e36abd9c980558206f27a76c25460704b690edcd1d"
    "uk"
  end
  language "zh-TW" do
    sha256 "0321070111d96e4493c8338f6aee536f0a5686a4fcb9c11fdaae9fbf8e882e96"
    "zh-TW"
  end
  language "zh" do
    sha256 "e08d52f73fd1909abf3657998a363f7f04b3e95b203a7c42331d4ebd7461c9bc"
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
