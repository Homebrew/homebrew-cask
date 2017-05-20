cask 'upm' do
  version '1.14'
  sha256 'd9e46bdf6ccd5ff1d79290a51352bd23aa45ebdd6d7b832e254f88297446b06d'

  url "https://downloads.sourceforge.net/upm/upm-#{version}/upm-mac-#{version}.tar.gz"
  appcast 'https://sourceforge.net/projects/upm/rss',
          checkpoint: '03c4d2fb07e59aefded525947d72ce9e628d5c1c4897e7168867a5e3bec485d9'
  name 'Universal Password Manager'
  homepage 'http://upm.sourceforge.net/'

  app "upm-mac-#{version}/UPM.app"
end
