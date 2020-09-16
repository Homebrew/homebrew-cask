cask "tagger" do
  version "1.8.0.7"
  sha256 "a4745dcf88f1691d2c681a87e6cfb6326200b6a2d9dfb53c2c62c67905a09e16"

  # github.com/Bilalh/Tagger/ was verified as official when first introduced to the cask
  url "https://github.com/Bilalh/Tagger/releases/download/1.8.0/Tagger_#{version}.zip"
  appcast "https://github.com/Bilalh/Tagger/releases.atom"
  name "Tagger"
  desc "Music metadata editor supporting batch edits and importing VGMdb data"
  homepage "https://bilalh.github.io/projects/tagger/"

  app "Tagger.app"
end
