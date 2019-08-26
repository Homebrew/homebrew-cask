cask 'windows95' do
  # note: "95" is not a version number, but an intrinsic part of the product name
  version '2.2.0'
  sha256 'd2b5ac638f0a2c5735f9683c9312587b4a491e089623c194f4bb7fa358cf8fc0'

  url "https://github.com/felixrieseberg/windows95/releases/download/v#{version}/windows95-macos-#{version}.zip"
  appcast 'https://github.com/felixrieseberg/windows95/releases.atom'
  name 'Windows 95'
  homepage 'https://github.com/felixrieseberg/windows95'

  auto_updates true

  app 'windows95.app'
end
