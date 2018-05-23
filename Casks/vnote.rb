cask 'vnote' do
  version '1.16'
  sha256 '363ea900028761c3480b5501cdea020e429b73a21f41e0e492768d3e25571745'

  # github.com/tamlok/vnote was verified as official when first introduced to the cask
  url "https://github.com/tamlok/vnote/releases/download/v#{version}/VNote-#{version}-x64.dmg"
  appcast 'https://github.com/tamlok/vnote/releases.atom',
          checkpoint: '5f7de97854b354a4f32d05f9b791d87502fb1c7af4f27eab27be858ca2aadf61'
  name 'VNote'
  homepage 'https://tamlok.github.io/vnote/'

  app 'VNote.app'
end
