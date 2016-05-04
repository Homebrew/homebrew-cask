cask :v1 => 'firefox' do
  version :latest
  sha256 :no_check

  url 'https://example.com/duplicate-firefox/latest.dmg'
  homepage 'https://example.com/duplicate-firefox/'
  license :oss

  app 'Duplicate Firefox.app'
end
