cask 'zwift' do
  version :latest
  sha256 :no_check

  url 'http://cdn.zwift.com/app/ZwiftOSX.dmg'
  name 'Zwift'
  homepage 'https://www.zwift.com/'

  pkg 'ZwiftInstaller.pkg'

  uninstall quit:    'com.zwift.ZwiftLauncher',
            pkgutil: 'com.zwift.ZwiftLauncher'

  zap trash: '~/Library/Application Support/Zwift'
end
