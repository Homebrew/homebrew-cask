cask 'windows95' do
  # note: "95" is not a version number, but an intrinsic part of the product name
  version '1.3.0'
  sha256 '35b1a87a8e890e1f3355080432344f403a231d070f61c482c675a51f785154a6'

  url "https://github.com/felixrieseberg/windows95/releases/download/v#{version}/windows95-macos-#{version}.zip"
  appcast 'https://github.com/felixrieseberg/windows95/releases.atom'
  name 'Windows 95'
  homepage 'https://github.com/felixrieseberg/windows95'

  auto_updates true

  app 'windows95.app'
end
