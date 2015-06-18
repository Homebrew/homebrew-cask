cask :v1 => 'yoda' do
  version '1.0.0'
  sha256 '4c7668f3dd697c2e6e8cd1cd416cd71cf58009e3aafbd652bccffd45614676ec'

  url "https://github.com/whoisandie/yoda/releases/download/v#{version}/yoda-installer-#{version}.dmg"
  appcast 'https://github.com/whoisandie/yoda/releases.atom'
  name 'Yoda'
  homepage 'https://github.com/whoisandie/yoda'
  license :mit

  app 'Yoda.app'
end
