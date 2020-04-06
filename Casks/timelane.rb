cask 'timelane' do
  version '1.0.0'
  sha256 'cee79be7ffd8f1e6d06cc937fe1addc895fa531a99c439cbe7fbd30589c6fed8'

  # github.com/icanzilb/Timelane was verified as official when first introduced to the cask
  url "https://github.com/icanzilb/Timelane/releases/download/#{version}/Timelane.app-#{version}.zip"
  appcast 'https://github.com/icanzilb/Timelane/releases.atom'
  name 'Timelane'
  homepage 'http://timelane.tools/'

  app 'Timelane.app'
end
