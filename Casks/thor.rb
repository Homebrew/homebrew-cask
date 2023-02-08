cask "thor" do
  version "1.5.11"
  sha256 "951903493d87a78b5b70446e19ac91d4b59d0f74a66474183d7fd87082bcdb88"

  url "https://github.com/gbammc/Thor/releases/download/#{version}/Thor_#{version}.zip"
  name "Thor"
  desc "Utility to switch between applications"
  homepage "https://github.com/gbammc/Thor/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true

  app "Thor.app"

  uninstall quit: "me.alvinzhu.Thor"

  zap trash: [
    "~/Library/Application Scripts/me.alvinzhu.Thor",
    "~/Library/Containers/me.alvinzhu.Thor",
  ]
end
