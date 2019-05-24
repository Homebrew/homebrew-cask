cask 'windows95' do
  # note: "95" is not a version number, but an intrinsic part of the product name
  version '2.1.1'
  sha256 '99c030b3bdce8a69629429e44da88855cce938e58c216f649e532d497bda4ca9'

  url "https://github.com/felixrieseberg/windows95/releases/download/v#{version}/windows95-macos-#{version}.zip"
  appcast 'https://github.com/felixrieseberg/windows95/releases.atom'
  name 'Windows 95'
  homepage 'https://github.com/felixrieseberg/windows95'

  auto_updates true

  app 'windows95.app'
end
