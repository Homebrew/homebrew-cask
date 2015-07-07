cask :v1 => 'unison' do
  version '2.48.6'
  sha256 '123976cbcc8537a09da5ebf3bcea98d87315d0ce09566796d9fb50b981e30912'

  # petitepomme.net is the official download host per the vendor homepage
  url "http://alan.petitepomme.net/unison/assets/Unison-OS-X-#{version}.zip"
  name 'Unison'
  homepage 'https://www.cis.upenn.edu/~bcpierce/unison/'
  license :gpl

  app 'Unison.app'
end
