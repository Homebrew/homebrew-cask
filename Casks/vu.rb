cask 'vu' do
  version '1.1'
  sha256 '7c6424e0c4c3e0eb92edb1904617231afbb7f4de3aa120f803cc5403ae11406c'

  # dl.devmate.com/com.boriskarulin.vu was verified as official when first introduced to the cask
  url 'https://dl.devmate.com/com.boriskarulin.vu/vu.dmg'
  appcast 'http://updates.devmate.com/com.boriskarulin.vu.xml',
          checkpoint: '5caad13605150adf41ee58b113ba3669f4376b84e9a57feaed836b65f2d69f5d'
  name 'vu'
  homepage 'https://datastills.com/vu/'

  app 'vu.app'
end
