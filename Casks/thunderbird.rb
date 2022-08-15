cask "thunderbird" do
  version "102.1.2"

  language "cs" do
    sha256 "d1f120580df15fa5f643e35848f2bb4e311e15159d912aeb6c102e09ab9e429a"
    "cs"
  end
  language "de" do
    sha256 "e1508a3ce1378c12984a0d02474af710d7ccf867b4ef7c1b861bf8df6aef452d"
    "de"
  end
  language "en-GB" do
    sha256 "41525ba0a46e899f91f5d7859e42208b9cfe2ab99d12841630c85a7e0f02a113"
    "en-GB"
  end
  language "en", default: true do
    sha256 "3238ff72e60b7050ca821cdae0260586cc3e0a356bb47e6bb7ba68fa2e1fd7da"
    "en-US"
  end
  language "fr" do
    sha256 "7608a0568070d5e3570074be4501976f33c1ab1807d7fd96f1612d54678cd0bc"
    "fr"
  end
  language "gl" do
    sha256 "69454abe8fc8457604fe33dd3b22cf19f2e59dad461b02f10be067280314f34f"
    "gl"
  end
  language "it" do
    sha256 "b7c0a4701ced2380de3c9c7a138457a3bb0c0b87f725301132412e1df116b3f8"
    "it"
  end
  language "ja" do
    sha256 "1b49098e6b1be1725709bde268ad11f8efdca8a3068dee4fcad79d1dccf17f2d"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "164c06d2a8c9532608b730ed68df9ace23669bf756659458b1c15751e7aeda30"
    "nl"
  end
  language "pl" do
    sha256 "487dbae8cb5bc5872d7d3301af7729169c5b2e2c6f5cd7fbabf686dd3ad92917"
    "pl"
  end
  language "pt" do
    sha256 "ad7312b76514628ff60ed207b23d1c0946a5c14f204529f55e4bd35c30ed480c"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "cc57e28fc68dce4a3e4ae3e7012755d4e34d81ce9f789d4bc24bdd1c9c482a87"
    "pt-BR"
  end
  language "ru" do
    sha256 "fc69f4f9401aa7d4959a40edf9cf7c87f53765b7f1efccf2bff07400a483cef2"
    "ru"
  end
  language "uk" do
    sha256 "39b280b982b7d640eaff9f7bd371d67e05a4c612c6596879a9608972dc3cef96"
    "uk"
  end
  language "zh-TW" do
    sha256 "b5c04b74ad91f82a830bca0d131e318748d86e76be479be1b270842dd468ba9d"
    "zh-TW"
  end
  language "zh" do
    sha256 "0dba87080e8e04fbe271ff58d74298958f88cc4c6009447f8b9143127cd78ccd"
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
