cask "thunderbird" do
  version "102.0.1"

  language "cs" do
    sha256 "9cf715e2e53b5a2d6cee7a95cdb99013e28abb753f8845e35fc0cc45c0b9f15b"
    "cs"
  end
  language "de" do
    sha256 "a2e6dd9227bba19e86d76860346e15fa62b139900af809fd7e478ad9cf76f173"
    "de"
  end
  language "en-GB" do
    sha256 "af5c016cc07130dba977fa3151bd9caeddfb3a7c13063a85a2c574f6a522dee1"
    "en-GB"
  end
  language "en", default: true do
    sha256 "fa0c240a16cffdc1292b920b19aa6a4c729a76d4319413c56e5f20f3cf99e964"
    "en-US"
  end
  language "fr" do
    sha256 "ecf3fc8b820b52d1504c567c688b116c65dacd7c173d51998efbef08d39f0305"
    "fr"
  end
  language "gl" do
    sha256 "48caa28e7118888c319e0ea22375970d908d27e16a7551e69b82da2aec3ccd46"
    "gl"
  end
  language "it" do
    sha256 "dad7dfd8eead62df01210b139889aa29726cc2b4a2cb2995058ad0443e5cf6b8"
    "it"
  end
  language "ja" do
    sha256 "8ba7d55ea2fd3ba670eea26ee6df0d5394a40db0ccfe21400707a73cf3f37e38"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "bad2f95ac3d3228d4d457885ff5ab1621bd37e34631deff6dbea82e1c1cab3c7"
    "nl"
  end
  language "pl" do
    sha256 "db772a7f11227d111dec0938204efbecd13cb5f287b862560386377a9aba242a"
    "pl"
  end
  language "pt" do
    sha256 "05a60ed5aeb6272dac74a92a0967fddaac9a942dfefdb1072cd56b419fec4d8a"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "3f5ccf25379f3502908ccf8e3b9e815018d8bf3a75408f8e7db8b1576532e60f"
    "pt-BR"
  end
  language "ru" do
    sha256 "dcf9a6aa49a7a4ee1b4c8b41e199d0914fbb06aff67878efaae009f20890c1d2"
    "ru"
  end
  language "uk" do
    sha256 "fcaaa1e746a38e516de136e596eca208feac611c01ead13838d1e6ae7c5928e4"
    "uk"
  end
  language "zh-TW" do
    sha256 "ec0bacfe7d89b27c9db17ac41632eb3668cf36d8f906cb37ed4ba64d197c1d18"
    "zh-TW"
  end
  language "zh" do
    sha256 "0a0db3e3efb8bb1c948283c87b4019c86991094132d0462196a2312aeffe9e06"
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
