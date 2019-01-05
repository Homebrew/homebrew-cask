cask 'windows95' do
  # note: "95" is not a version number, but an intrinsic part of the product name
  version '1.4.0'
  sha256 '64e2d7d447c5841a6a34802d7d394770e2b08f20498ff33d61ace53607087023'

  url "https://github.com/felixrieseberg/windows95/releases/download/v#{version}/windows95-macos-#{version}.zip"
  appcast 'https://github.com/felixrieseberg/windows95/releases.atom'
  name 'Windows 95'
  homepage 'https://github.com/felixrieseberg/windows95'

  auto_updates true

  app 'windows95.app'
end
