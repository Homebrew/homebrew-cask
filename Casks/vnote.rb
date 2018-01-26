cask 'vnote' do
  version '1.11.1'
  sha256 'ceb5636c4a11d30c75bb8b0e87cd659894b5421385f2932d7881d2ff657fc941'

  # github.com/tamlok/vnote was verified as official when first introduced to the cask
  url "https://github.com/tamlok/vnote/releases/download/v#{version}/VNote_X64_#{version}.dmg"
  appcast 'https://github.com/tamlok/vnote/releases.atom',
          checkpoint: '76d7ddfb8dba8ada24d93e338adee694c780643ae15a446c3db4d2b00909e887'
  name 'VNote'
  homepage 'https://tamlok.github.io/vnote/'

  app 'VNote.app'
end
