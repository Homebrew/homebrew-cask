cask "thunderbird" do
  version "102.2.1"

  language "cs" do
    sha256 "0166799bf7c412968a68327a3267a68f671551b28b49efd640250c8ca4d0c698"
    "cs"
  end
  language "de" do
    sha256 "2ed84bfba8a426223d5fa5f84c1a87af278d5d4fb68d70efd760cdecad07cbf2"
    "de"
  end
  language "en-GB" do
    sha256 "de1f964add63ec79462933334dc83593b1756e1744de6e2f4f285bf2e0a506df"
    "en-GB"
  end
  language "en", default: true do
    sha256 "80ec8e5fc441e2b86448e8eb5f10693f1d7438c70d11916745940b8068dfd020"
    "en-US"
  end
  language "fr" do
    sha256 "a4157e4b336dffd0ae77fed05dd86dea7cdc4340b6d2a64c17895be34c99b369"
    "fr"
  end
  language "gl" do
    sha256 "66c509bab641697d8b7a23424f1a98869a1c50070bedd099f731fc3f39b534b0"
    "gl"
  end
  language "it" do
    sha256 "91c3014001d88e028be468ee7ddecea6d67ed252c6f7775b7e8239829755e222"
    "it"
  end
  language "ja" do
    sha256 "98e097e06a04eae026ca34fdafd961fee121a436ed355a3b360a0c45e9764119"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "8fdc62acdc9810db3acc2bd81c5b38a027ca619aea5f8de1ddfa39078cbde4fd"
    "nl"
  end
  language "pl" do
    sha256 "ea6e4dad6e77da102334cdff8b66384991076c85d774be0fcfcc9710fd2c8e1e"
    "pl"
  end
  language "pt" do
    sha256 "412cad78a0ecd91002741b0f3edbe9c108ee14823833827223de225e382639a4"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "6d9954e751c1009d07d3dc2d1440c91109d0b56f47f2daf6f4d808ae3da5b5bd"
    "pt-BR"
  end
  language "ru" do
    sha256 "7136b627b10deb1e945a8e78e6239f6080cf5862d3b9cf49cea96e74f9de5ad5"
    "ru"
  end
  language "uk" do
    sha256 "d04e20dadfdb6fa3f0b76b3340634a16eac6814cbad1d9a513d18b5694d0438d"
    "uk"
  end
  language "zh-TW" do
    sha256 "0b010e6ef436c583be3984fe858e6bf4280d37a3ac577138fed07a09e2d0574d"
    "zh-TW"
  end
  language "zh" do
    sha256 "22075a9836f1555849189ffe3234b3068ee31c56c178a19425b07a14e268b16a"
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
