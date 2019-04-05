cask 'windows95' do
  # note: "95" is not a version number, but an intrinsic part of the product name
  version '2.0.0'
  sha256 '9f2ce72b7ec7a79cb3521bd75722b39f99a4234784dc232667ae682e6104637b'

  url "https://github.com/felixrieseberg/windows95/releases/download/v#{version}/windows95-macos-#{version}.zip"
  appcast 'https://github.com/felixrieseberg/windows95/releases.atom'
  name 'Windows 95'
  homepage 'https://github.com/felixrieseberg/windows95'

  auto_updates true

  app 'windows95.app'
end
