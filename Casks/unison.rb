cask :v1 => 'unison' do
  if MacOS.release >= :mavericks
  version '2.48.6'
  sha256 '123976cbcc8537a09da5ebf3bcea98d87315d0ce09566796d9fb50b981e30912'
  url "http://alan.petitepomme.net/unison/assets/Unison-OS-X-#{version}.zip"
  else
  version '2.40.69'
  sha256 '2bcc460511f2b43fa1613cc5f9ba4dd59bb12d40b5b9fb2e9f21adaf854bcf3b'
  url "http://alan.petitepomme.net/unison/assets/Unison-#{version}_x64.dmg"
  end
 
  name 'Unison'
  homepage 'https://www.cis.upenn.edu/~bcpierce/unison/'
  # petitepomme.net is the official download host per the vendor homepage
  license :gpl
 
  app 'Unison.app'
 
  depends_on :arch => :x86_64
end
