cask 'yubikey-personalization-gui' do
  version '3.1.24'
  sha256 'bb13aeb006ca40fc1b16360250daa9ee08f85248cce7d4f21335f2ce6a7a3248'

  url "https://developers.yubico.com/yubikey-personalization-gui/Releases/yubikey-personalization-gui-#{version}.pkg"
  appcast 'https://developers.yubico.com/yubikey-personalization-gui/Releases/',
          checkpoint: '48dc5dee670b03acbca40eed667f2d92dee0ae467a9788cba43e6a16d00905eb'
  name 'YubiKey Personalization GUI'
  homepage 'https://www.yubico.com/products/services-software/personalization-tools/use/'

  pkg "yubikey-personalization-gui-#{version}.pkg"

  uninstall pkgutil: 'com.yubico.YKPersonalization'
end
