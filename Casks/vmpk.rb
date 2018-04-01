cask 'vmpk' do
  version '0.6.2'
  sha256 'e916144e7ee350baeedbf36c59bf019f514af49ca0a927a29ec9f2338b8bd9d8'

  #  https://downloads.sourceforge.net/vmpk/vmpk-#{version}-mac-x64.dmg was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/vmpk/vmpk-#{version}-mac-x64.dmg"
  appcast 'https://sourceforge.net/projects/vmpk/rss',
          checkpoint: '15fe037132d06ffc71c22393c6f360e0828a1844165d4efbb37a31a26c6089f2'
  name 'VMPK'
  homepage 'http://vmpk.sourceforge.net/'

  app 'vmpk.app'
end
