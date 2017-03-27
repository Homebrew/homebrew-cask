cask 'zerotier-one' do
  version '1.2.2'
  sha256 'e57245b90c8620a0448ac2aba4cc24c57a3b1010f448879c7a953779d3f4435e'

  url 'https://download.zerotier.com/dist/ZeroTier%20One.pkg'
  appcast 'https://github.com/zerotier/ZeroTierOne/releases.atom',
          checkpoint: '032cf7579d5fbb1eeb5d8c49bc74e4a1c6dec93c04cf5086a4d6210cea800eca'
  name 'ZeroTier One'
  homepage 'https://www.zerotier.com/download.shtml'

  pkg 'ZeroTier One.pkg'

  uninstall pkgutil: 'com.zerotier.pkg.ZeroTierOne'
end
