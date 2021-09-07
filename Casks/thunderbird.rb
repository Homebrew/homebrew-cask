cask "thunderbird" do
  version "91.1.0"

  language "cs" do
    sha256 "7b62826b1d92f7c8fd7e5376a77fa3620dacd6b2b3f3509f19d0e147520620ee"
    "cs"
  end
  language "de" do
    sha256 "efc63800c9597f1378c5ffd0aff051c3b62efbaf7f770881719c2c1a5f8a09e8"
    "de"
  end
  language "en-GB" do
    sha256 "331eda6a398f3d63c40210710908ec7f24fe05453a463659068e3e11de1f006e"
    "en-GB"
  end
  language "en", default: true do
    sha256 "b28ff824beb06d655b21971d11f5a218388b12f081a53fdb9e0e8fc904a0f01f"
    "en-US"
  end
  language "fr" do
    sha256 "f55bae2cfe7bc2d9437ff7a2cf1dc0ec3666459822ea33a9f22a588d650e3a18"
    "fr"
  end
  language "gl" do
    sha256 "3e8e1b819e645d64868226cd7e66d45dd48436930a4c9bac9de653934c397550"
    "gl"
  end
  language "it" do
    sha256 "94d9cd0f76fc9384b75bb9c5a270ec3a638cc98e45466918eadd82e59231dc32"
    "it"
  end
  language "ja" do
    sha256 "bb9bc46660de1dbb702a3d9e34cdbab8855d5d12778794b3b266c2b2b98911c9"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "d16ea11b40efda42f483b584d5c6fd51eee7760322896d9088a9684c8ca05f76"
    "nl"
  end
  language "pl" do
    sha256 "d02296abbdb4e782d057541157c284530675e80959991b2878ef8fa2759f801d"
    "pl"
  end
  language "pt" do
    sha256 "9e213784a286b8a45054e4ca3b1353c833b99411d715a981b909376e1daa3a1e"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "5d44d88b2fc068a53606b396f8d05ec0f65c9e6fb062df033c6584f43e3d274f"
    "pt-BR"
  end
  language "ru" do
    sha256 "7df7d494e1125f7a2b8c3c8538ceb16c9152177d8f245eaecada6b58f28bd5b7"
    "ru"
  end
  language "uk" do
    sha256 "68141d73d3dcdcc00d661867aa052130063cea43e88e880a69623f1c35b6d061"
    "uk"
  end
  language "zh-TW" do
    sha256 "59f90319a312803646c32c7eaaa72cd347b4aa0bbfa231d05313a8d8c5202a05"
    "zh-TW"
  end
  language "zh" do
    sha256 "9f364f40448b247a4243c18e61d6d4bef65d86b47875d3ae792299b2b42ce5fa"
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

  app "Thunderbird.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.mozilla.thunderbird.sfl*",
    "~/Library/Caches/Thunderbird",
    "~/Library/Preferences/org.mozilla.thunderbird.plist",
    "~/Library/Saved Application State/org.mozilla.thunderbird.savedState",
    "~/Library/Thunderbird",
  ]
end
