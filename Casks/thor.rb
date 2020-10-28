cask "thor" do
  version "1.5.3"
  sha256 "b3f84bd5a9a69fe9b8e8fd7458d17d5df1e9bd6b6c78284a90748fcf6d8773d2"

  url "https://github.com/gbammc/Thor/releases/download/#{version}/Thor_#{version}.zip"
  appcast "https://github.com/gbammc/Thor/releases.atom"
  name "Thor"
  desc "Utility to switch between applications"
  homepage "https://github.com/gbammc/Thor/"

  auto_updates true

  app "Thor.app"

  uninstall quit: "me.alvinzhu.Thor"

  zap trash: [
    "~/Library/Application Scripts/me.alvinzhu.Thor",
    "~/Library/Containers/me.alvinzhu.Thor",
  ]
end
