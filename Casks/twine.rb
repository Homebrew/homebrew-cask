cask "twine" do
  version "2.3.9"
  sha256 "b6afb15ff3f496f88a42e2f268d11875df4d206376cc851f3911bd41ddc58ec5"

  # github.com/klembot/twinejs/ was verified as official when first introduced to the cask
  url "https://github.com/klembot/twinejs/releases/download/#{version}/twine_#{version}_macos.dmg"
  appcast "https://github.com/klembot/twinejs/releases.atom"
  name "Twine"
  desc "Tool for telling interactive, nonlinear stories"
  homepage "https://twinery.org/"

  app "Twine.app"
end
