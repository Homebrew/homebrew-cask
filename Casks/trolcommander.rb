cask 'trolcommander' do
  version '0.9.8'
  sha256 'ce7a58046d2ed55ff92e8ab6990fa28c4db49db2075c51585616eee315aaccde'

  # github.com/trol73/mucommander was verified as official when first introduced to the cask
  url "https://github.com/trol73/mucommander/releases/download/v#{version}/trolcommander-#{version.dots_to_underscores}.app.tar.gz?raw=true"
  appcast 'https://github.com/trol73/mucommander/releases.atom',
          checkpoint: '07a84626dfc65bc014a9c4cd9d76f44b3138b6a11ca3d891f4492aa32f65af55'
  name 'trolCommander'
  homepage 'http://trolsoft.ru/en/soft/trolcommander'

  app 'trolCommander.app'
end
