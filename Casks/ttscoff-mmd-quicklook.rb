cask :v1 => 'ttscoff-mmd-quicklook' do
  version '1.1'
  sha256 '0bab1550b048b7bf2c29cbf81c8ae63277420204f1a35004047316e26cbac424'

  url "https://github.com/ttscoff/MMD-QuickLook/releases/download/#{version}/MultiMarkdown.QuickLook.qlgenerator.zip"
  appcast 'https://github.com/ttscoff/mmd-quicklook/releases.atom'
  name 'MMD-QuickLook'
  homepage 'https://github.com/ttscoff/mmd-quicklook'
  license :oss

  qlplugin 'MultiMarkdown QuickLook.qlgenerator'
end
