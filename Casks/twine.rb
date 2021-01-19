cask "twine" do
  version "2.3.11"
  sha256 "9574c4e36a84a9883d22af93009468037feec0a37039eb60b7e36fedb578bb77"

  url "https://github.com/klembot/twinejs/releases/download/#{version}/twine_#{version}_macos.dmg",
      verified: "github.com/klembot/twinejs/"
  appcast "https://github.com/klembot/twinejs/releases.atom"
  name "Twine"
  desc "Tool for telling interactive, nonlinear stories"
  homepage "https://twinery.org/"

  app "Twine.app"
end
