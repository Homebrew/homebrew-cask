cask 'vnote' do
  version '2.8.1'
  sha256 'dec52b9ff4f8352cfe9a19cd97a9684038c10f9dc5d0fe076d56449115318df4'

  # github.com/tamlok/vnote was verified as official when first introduced to the cask
  url "https://github.com/tamlok/vnote/releases/download/v#{version}/VNote-#{version}-x64.dmg"
  appcast 'https://github.com/tamlok/vnote/releases.atom'
  name 'VNote'
  homepage 'https://tamlok.github.io/vnote/'

  app 'VNote.app'
end
