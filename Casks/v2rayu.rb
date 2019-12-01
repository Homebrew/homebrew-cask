cask 'v2rayu' do
  version '1.5.0'
  sha256 'db06ff1fb266c2b5c19c041d4b698bd9d31a68b864d463eb1d65ff0887cb6a65'

  url "https://github.com/yanue/V2rayU/releases/download/#{version}/V2rayU.dmg"
  appcast 'https://github.com/yanue/V2rayU/releases.atom'
  name 'V2rayU'
  homepage 'https://github.com/yanue/V2rayU'

  depends_on macos: '>= :sierra'

  app 'V2rayU.app'
end
