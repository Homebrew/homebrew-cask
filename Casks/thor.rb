cask "thor" do
  version "1.5.5"
  sha256 "f71cb58b8ec3f82f5dfe6d0773c64560b228dc19a7b27eb9e651b6e5c4063fe8"

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
