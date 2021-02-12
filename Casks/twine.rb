cask "twine" do
  version "2.3.12"
  sha256 "0cd745968ba7db2c4119396022ede038e60a1f237dd9380168ef20f42a637ce4"

  url "https://github.com/klembot/twinejs/releases/download/#{version}/twine_#{version}_macos.dmg",
      verified: "github.com/klembot/twinejs/"
  appcast "https://github.com/klembot/twinejs/releases.atom"
  name "Twine"
  desc "Tool for telling interactive, nonlinear stories"
  homepage "https://twinery.org/"

  app "Twine.app"
end
