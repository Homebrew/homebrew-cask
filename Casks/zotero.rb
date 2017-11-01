cask 'zotero' do
  version '5.0.24'
  sha256 '1f153317893bce0f8236259089ede9804726063b7aab99faadeec4249175ea9f'

  url "https://download.zotero.org/client/release/#{version}/Zotero-#{version}.dmg"
  appcast 'https://github.com/zotero/zotero/releases.atom',
          checkpoint: '8ce5e1e5a94cc103d8c4f0df76794074215e51a4dadd64deab45b647f35b13a9'
  name 'Zotero'
  homepage 'https://www.zotero.org/'

  auto_updates true

  app 'Zotero.app'
end
