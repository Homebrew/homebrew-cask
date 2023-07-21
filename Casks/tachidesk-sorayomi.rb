cask "tachidesk-sorayomi" do
  version "0.5.9"
  sha256 "c0b7508013b3413bc4f692cebd8c2e455a6badb3181151459b181fda5bdb8d0a"

  url "https://github.com/Suwayomi/Tachidesk-Sorayomi/releases/download/#{version}/tachidesk-sorayomi-#{version}-macos-x64.zip"
  name "Tachidesk Sorayomi"
  desc "Manga reader"
  homepage "https://github.com/Suwayomi/Tachidesk-Sorayomi/"

  depends_on macos: ">= :mojave"

  app "Tachidesk Sorayomi.app"

  zap trash: [
    "~/Library/Application Scripts/com.suwayomi.tachideskSorayomi",
    "~/Library/Containers/com.suwayomi.tachideskSorayomi",
  ]
end
