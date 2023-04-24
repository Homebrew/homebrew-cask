cask "thunderbird" do
  version "102.10.1"

  language "cs" do
    sha256 "f4a455df3e50834385ca26cc23c5b22648ee507eccf797a4d6ba1b50edacb858"
    "cs"
  end
  language "de" do
    sha256 "fed5c55b8950e0c3552416d32302f87504ea100b879d4e9109c928b86a349e15"
    "de"
  end
  language "en-GB" do
    sha256 "815bba3c3d92e22f54d122f9e465d86fde2adb40c4d1d3a4261606f587032a85"
    "en-GB"
  end
  language "en", default: true do
    sha256 "4f61dd7c33011bbbd2780f1eb5ac4c2ff10a84eb589218fc85f361bfe9f2abf1"
    "en-US"
  end
  language "fr" do
    sha256 "7271d08f5a4b5421fcc5d67f51ff8b8f10329882ef3ea40a8f56d0b5e13dcc2f"
    "fr"
  end
  language "gl" do
    sha256 "e08ff1b3ab787af68e7dd6c56227d4a9c6e300ea05fe90ac733f4fd802a4804a"
    "gl"
  end
  language "it" do
    sha256 "c72a0b102040a9051f82e8b6a03c93d9a25ed22770ae8a747399d758a172887e"
    "it"
  end
  language "ja" do
    sha256 "cfbad1efeab868eb699e10b496919e1ef3077cc06f7c2238bb64f25fb6ac5069"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "19f865b63eb641a3e26544800b772765385ea8e4adbfaa95a62a7228abd52c2b"
    "nl"
  end
  language "pl" do
    sha256 "708ed6ab71880a2ce45793032c090b5db9616a9ddb3ffc6582dd33a2f7a7a26b"
    "pl"
  end
  language "pt" do
    sha256 "93f96d6a09ead691a8c68bcc6f77ec2e6e5e8e1616c34c974c2a3253769d214e"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "66f2705172a32442064548c28f1c6bb59f8463baa8b6f9f65311cc5fd898baa6"
    "pt-BR"
  end
  language "ru" do
    sha256 "ce81244f7b1c709578cbd4a0ef4fc1e97a530c01b56dc4b32ab8a521f096252b"
    "ru"
  end
  language "uk" do
    sha256 "0b74099622df2abb01a7b504b6aaddcbaf18e5e6eadbd803e8a9be5d9cdd5187"
    "uk"
  end
  language "zh-TW" do
    sha256 "fcb81bf4f614a2b926a6a6d59d416950acd2d5fa7327d8cd96a9bccac733b74b"
    "zh-TW"
  end
  language "zh" do
    sha256 "4a821c9ab2d964265acae12d62a93a3ecc24841a4900cd9486f6deadde59f8fb"
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
