cask :v1 => 'wizard101' do
  version :latest  
  sha256  :no_check

  url 'https://www.wizard101.com/downloadGameMac/otherdownload'
  name 'Wizard101'
  homepage 'http://wizard101.com'
  license :unknown

  app 'Wizard101.app'
end
