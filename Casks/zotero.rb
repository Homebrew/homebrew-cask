cask :v1 => 'zotero' do
  version '4.0.28'
  sha256 '49fccdf461063cac3233c9472ce03cde690b8a6628fe964d17b269128b3e6c50'

  url "https://download.zotero.org/standalone/#{version}/Zotero-#{version}.dmg"
  name 'Zotero'
  homepage 'https://www.zotero.org/'
  license :affero

  app 'Zotero.app'
end
