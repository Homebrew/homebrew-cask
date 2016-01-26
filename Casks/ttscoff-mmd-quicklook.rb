cask 'ttscoff-mmd-quicklook' do
  version '1.2'
  sha256 '6370fa8d98e627d83fe70e9bc5bd400bd7b6b68257a40bf33bb70df5d12935c1'

  url "https://github.com/ttscoff/MMD-QuickLook/releases/download/#{version}/MMD-QuickLook#{version}.zip"
  appcast 'https://github.com/ttscoff/mmd-quicklook/releases.atom',
          checkpoint: '51232f49e048e4e56c62c34f4207c4bc2f38c2ac410dd422975bc779e272168d'
  name 'MMD-QuickLook'
  homepage 'https://github.com/ttscoff/mmd-quicklook'
  license :oss

  qlplugin 'MultiMarkdown QuickLook.qlgenerator'
end
