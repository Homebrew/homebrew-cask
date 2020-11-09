cask "thunderbird" do
  version "78.4.2"

  language "cs" do
    sha256 "b6349c740788f086ef97f8a8b3d2cc341c9370f33039c53dd55b44ce71dc5f4c"
    "cs"
  end
  language "de" do
    sha256 "165c5f3a4d67889e435d54eb94019b2ca8fc40cd11260a49710c171538a5def7"
    "de"
  end
  language "en-GB" do
    sha256 "665303ae751b62ce0641ac4a70766303292da2b6ce7d56a3729257f5697ab2e6"
    "en-GB"
  end
  language "en", default: true do
    sha256 "64f671c8c3572f66b03b433c7593d0ee57fcf81bc7291fb1dffd7a771017134e"
    "en-US"
  end
  language "fr" do
    sha256 "aea8a85138527317494a7f644ba8bc80dd9984668ee5b8e5e6aa9f7662986b1e"
    "fr"
  end
  language "gl" do
    sha256 "3d934bbf3552f5496cf24c7b8c3c770c105351452cc4faa51541a5838b0a4ab5"
    "gl"
  end
  language "it" do
    sha256 "4a4db4830b92d43aed45f7164620cc07e8452a49ada29c0d2850e36dbc5d910c"
    "it"
  end
  language "ja" do
    sha256 "90acce83a0b690ca9afad57c7714dca039de6e417e4ed7edf14f2f6fd911401b"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "a48a402b8d1da1604e9b3dcccada561d05f122ef952694926a638cdf799c3f06"
    "nl"
  end
  language "pl" do
    sha256 "eb5e73b3cf959c0cfc547700bde9a856fcb21b2a0774e6bffcf1687b0dc3e799"
    "pl"
  end
  language "pt" do
    sha256 "63cf8a539ff952c211f2265b5d14e88d024bb9ad55b4f3c1da140ee0a5eaa9f4"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "38d8d32005076ec42551dc84b21a3f679404ea64a2bb55874574aad84f3c88d8"
    "pt-BR"
  end
  language "ru" do
    sha256 "4b3ab2605be0bcce8df0b2e3fa5cc0997f05815eb3c9716f263aa70a09823584"
    "ru"
  end
  language "uk" do
    sha256 "f3877d4f4ae3e381ed441bd36f95e4f1931c680b3d92ef9044310d112a76cd95"
    "uk"
  end
  language "zh-TW" do
    sha256 "dce9b7caca4708b7bf6f0766ffaba7ff1dd03a3637f8a53304336888c7a53ee1"
    "zh-TW"
  end
  language "zh" do
    sha256 "1fc8335214134dc89b79ff8ea22ad0e2c919d37d43a74b7490e10a0b50991bde"
    "zh-CN"
  end

  # ftp.mozilla.org was verified as official when first introduced to the cask
  url "https://ftp.mozilla.org/pub/thunderbird/releases/#{version}/mac/#{language}/Thunderbird%20#{version}.dmg"
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
