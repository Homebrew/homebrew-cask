cask 'windows95' do
  # note: "95" is not a version number, but an intrinsic part of the product name
  version '2.1.0'
  sha256 'e177a52041ff7b1952ad230c5fc71a94935d65acd8bf8558bf5b7f0cff82f583'

  url "https://github.com/felixrieseberg/windows95/releases/download/v#{version}/windows95-macos-#{version}.zip"
  appcast 'https://github.com/felixrieseberg/windows95/releases.atom'
  name 'Windows 95'
  homepage 'https://github.com/felixrieseberg/windows95'

  auto_updates true

  app 'windows95.app'
end
