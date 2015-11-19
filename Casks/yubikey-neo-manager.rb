cask :v1 => 'yubikey-neo-manager' do
  version '1.3.0'
  sha256 'ad4c17487af82e79be4265366403667b8ca704e5eb4f18fdf56b329420e571bf'

  url "https://developers.yubico.com/yubikey-neo-manager/Releases/yubikey-neo-manager-#{version}-mac.pkg"
  name 'YubiKey NEO Manager'
  homepage 'https://developers.yubico.com/yubikey-neo-manager/'
  license :bsd

  pkg "yubikey-neo-manager-#{version}-mac.pkg"

  uninstall :pkgutil => 'com.yubico.pkg.YubiKeyNEOManager'
end
