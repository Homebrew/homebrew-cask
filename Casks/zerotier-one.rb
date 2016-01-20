cask 'zerotier-one' do
  version :latest
  sha256 :no_check

  url 'https://www.zerotier.com/dist/dist/ZeroTier%20One.pkg'
  name 'ZeroTier One'
  homepage 'https://www.zerotier.com'
  license :gpl

  pkg 'ZeroTier One.pkg'

  uninstall pkgutil: 'com.zerotier.*'
end
