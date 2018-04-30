cask 'xca' do
  version '2.0.0'
  sha256 '2fa713dc2d4edc55fdde7714d32f953939b6a43597a20601c08614e5270f3d8d'

  # github.com/chris2511/xca was verified as official when first introduced to the cask
  url "https://github.com/chris2511/xca/releases/download/RELEASE.#{version}/xca-#{version}.dmg"
  appcast 'https://github.com/chris2511/xca/releases.atom',
          checkpoint: '802f6d038e3e40197cfc9ea4f6b19bb786b1bddf1180821013c64a9e1a9af956'
  name 'XCA'
  homepage 'https://hohnstaedt.de/xca/'

  app 'xca.app'
end

