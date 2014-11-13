cask :v1 => 'whiskey' do
  version :latest
  sha256 :no_check

  url 'http://usewhiskey.com/latest'
  homepage 'http://usewhiskey.com/'
  license :unknown

  app 'Whiskey.app'
end
