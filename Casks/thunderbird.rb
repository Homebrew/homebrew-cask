cask "thunderbird" do
  version "102.7.1"

  language "cs" do
    sha256 "2dd4cbe2c7ad928e687724dbedcbb54e15c493ea992688bb6101853565ba2bb8"
    "cs"
  end
  language "de" do
    sha256 "04a3dd4f775df5441f7fd0038c142f2e74db159f94dee38ba3bfe1e361471650"
    "de"
  end
  language "en-GB" do
    sha256 "0eba62e54df693737aee740eb107ad6445c7fca6401bad7142b2b73558eade16"
    "en-GB"
  end
  language "en", default: true do
    sha256 "8ba0104c7c8573db57207297f0dcb17551c3a0eaa8a3d54d67f1002129bc8eb9"
    "en-US"
  end
  language "fr" do
    sha256 "23bc55fc8c045b5106112dda4454a0b548a41eb5e9d8f7f986d78c92956fd7b2"
    "fr"
  end
  language "gl" do
    sha256 "655c62e0f665c6f91aba87575e76cb0524390b55d43e92f166e8dad793af5952"
    "gl"
  end
  language "it" do
    sha256 "9624e0dbb8d63da9f4b929c49b6a7065f666868e3c6e2d6c1fc4ce8603864e20"
    "it"
  end
  language "ja" do
    sha256 "9f31feef311eed1fc130094855e80d125463cd52737d3cebe06e63b555d968d2"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "d458d4c35a8231b269398a5c78feaeeb8a2ec5686290d28a315ad6192d09ef61"
    "nl"
  end
  language "pl" do
    sha256 "d51a65c751a12627b0be15f75edd172a5d64d07526821150f47d3759018adabc"
    "pl"
  end
  language "pt" do
    sha256 "19b68019e4939d68ed5f6e8e29d7cf133299b25f82703911486f2a29a2d100f8"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "53135d9944575bbae6262422eeab6c2fb4187d33a5212f33e934539a3af90c79"
    "pt-BR"
  end
  language "ru" do
    sha256 "f47fddf91dbdfa5fde4d3a11c7a8ffa1f1e4a0b8d81d072594b69b2f61a2c888"
    "ru"
  end
  language "uk" do
    sha256 "68afe62894eef49b7cd2632ef9dd1a039e3a512bbf5a3fd79253636cc0647b6f"
    "uk"
  end
  language "zh-TW" do
    sha256 "bc7ee03125d2926bef1988df38b9e0aa644b9812d49a755abe43f8ccd28168ad"
    "zh-TW"
  end
  language "zh" do
    sha256 "e223956126b3b5c836049f1876f875135280238a909d0c2eb170a022f0f57742"
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
