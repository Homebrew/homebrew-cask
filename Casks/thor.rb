cask "thor" do
  version "1.5.6"
  sha256 "b35febd2c367f8fa266b914c4f93ca5b03a28d2902b8bbc79bbb7455ca2746ce"

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
