cask 'windows95' do
  # note: "95" is not a version number, but an intrinsic part of the product name
  version '2.2.1'
  sha256 'bee0c1a0b142b8a096e14567948f0ce36a156e21d9d3ed055dfd17e701ba8b35'

  url "https://github.com/felixrieseberg/windows95/releases/download/v#{version}/windows95-macos-#{version}.zip"
  appcast 'https://github.com/felixrieseberg/windows95/releases.atom'
  name 'Windows 95'
  homepage 'https://github.com/felixrieseberg/windows95'

  auto_updates true

  app 'windows95.app'
end
