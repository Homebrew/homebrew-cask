cask "trolcommander" do
  version "0.9.9"
  sha256 "143b62df9fa2ece807724b690692787cb10b3e42796faf6944f1f2d047db1d9e"

  # github.com/trol73/mucommander/ was verified as official when first introduced to the cask
  url "https://github.com/trol73/mucommander/releases/download/v#{version}/trolcommander-#{version.dots_to_underscores}.app.tar.gz?raw=true"
  appcast "https://github.com/trol73/mucommander/releases.atom"
  name "trolCommander"
  desc "Fork of the muCommander file manager"
  homepage "https://trolsoft.ru/en/soft/trolcommander"

  app "trolCommander.app"
end
