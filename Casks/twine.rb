cask "twine" do
  version "2.3.10"
  sha256 "411d4e8621a39d3dd16858f497908d473755d207a495b28c277153d3842f8d5f"

  url "https://github.com/klembot/twinejs/releases/download/#{version}/twine_#{version}_macos.dmg",
      verified: "github.com/klembot/twinejs/"
  appcast "https://github.com/klembot/twinejs/releases.atom"
  name "Twine"
  desc "Tool for telling interactive, nonlinear stories"
  homepage "https://twinery.org/"

  app "Twine.app"
end
