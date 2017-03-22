cask 'upm' do
  version '1.14'
  sha256 'd9e46bdf6ccd5ff1d79290a51352bd23aa45ebdd6d7b832e254f88297446b06d'

  url "https://downloads.sourceforge.net/upm/upm-#{version}/upm-mac-#{version}.tar.gz"
  appcast 'https://sourceforge.net/projects/upm/rss',
          checkpoint: '89855b9570b29cfa046bd23fa605d5488ddd34d20b98a5628e5e4972022eb0ab'
  name 'Universal Password Manager'
  homepage 'http://upm.sourceforge.net/'

  app "upm-mac-#{version}/UPM.app"
end
