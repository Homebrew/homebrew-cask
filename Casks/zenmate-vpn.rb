cask 'zenmate-vpn' do
  version :latest
  sha256 :no_check

  # amazonaws.com is the official download host per the vendor homepage
  url 'https://macos-update.s3.amazonaws.com/ZenMate_OSX_VPN.dmg'
  name 'ZenMate VPN'
  homepage 'https://www.zenmate.com'
  license :commercial

  app 'ZenMate.app'
end
