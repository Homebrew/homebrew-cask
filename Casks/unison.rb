cask 'unison' do
  if MacOS.release <= :mountain_lion
    version '2.40.69'
    sha256 '2bcc460511f2b43fa1613cc5f9ba4dd59bb12d40b5b9fb2e9f21adaf854bcf3b'

    # petitepomme.net is the official download host per the vendor homepage
    url "http://alan.petitepomme.net/unison/assets/Unison-#{version}_x64.dmg"
  else
    version '2.48.6'
    sha256 '123976cbcc8537a09da5ebf3bcea98d87315d0ce09566796d9fb50b981e30912'

    # petitepomme.net is the official download host per the vendor homepage
    url "http://alan.petitepomme.net/unison/assets/Unison-OS-X-#{version}.zip"
  end

  name 'Panic Unison'
  homepage 'https://www.cis.upenn.edu/~bcpierce/unison/'
  license :gpl

  depends_on arch: :x86_64

  app 'Unison.app'
end
