cask 'zerobundle' do
  version '0.1.1'
  sha256 '1ba5a80b5e95ab62edbd435c1dc89bbdf8f215945f887681e5f54115984cb048'

  # zeronet.io and https://github.com/HelloZeroNet/ZeroBundle were verified as official when first introduced to the cask
  url "https://github.com/HelloZeroNet/ZeroBundle/releases/download/#{version}/ZeroBundle-mac-v#{version}.zip"
  appcast 'https://github.com/HelloZeroNet/ZeroBundle/releases.atom'
  # checkpoint: i don't know how to creat it.
  name 'ZeroBundle'
  homepage 'https://zeronet.io/'
  license :gpl # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  suite 'ZeroNet'
end
