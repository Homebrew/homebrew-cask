cask 'timelane' do
  version '1.2'
  sha256 '96af1b29474a33e37dbe90df3a8171b3c505eaa55db1d791d1be0ef007bfb781'

  # github.com/icanzilb/Timelane/ was verified as official when first introduced to the cask
  url "https://github.com/icanzilb/Timelane/releases/download/#{version}/Timelane.app-#{version}.zip"
  appcast 'https://github.com/icanzilb/Timelane/releases.atom'
  name 'Timelane'
  homepage 'http://timelane.tools/'

  depends_on macos: '>= :mojave'

  app 'Timelane.app'
end
