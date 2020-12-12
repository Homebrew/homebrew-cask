cask "xaos" do
  version "4.2"
  sha256 "80b01d8cd10b6cd6d567058acaf9430398e5608f5e179048a4167ecc57b3bd90"

  # github.com/xaos-project/XaoS/ was verified as official when first introduced to the cask
  url "https://github.com/xaos-project/XaoS/releases/download/release-#{version}/XaoS-#{version}.dmg"
  appcast "https://github.com/xaos-project/XaoS/releases.atom"
  name "GNU XaoS"
  homepage "https://xaos-project.github.io/"

  app "XaoS.app"
end
