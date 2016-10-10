cask 'universal-media-server' do
  version '6.5.1'
  sha256 '72603227d3501093b7483bf8cbb9c25a76418bb3e276a6d480d03b3fc088514c'

  # sourceforge.net/unimediaserver was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/unimediaserver/Official%20Releases/OS%20X/UMS-#{version}-Java8.dmg"
  appcast 'https://sourceforge.net/projects/unimediaserver/rss?path=/Official%20Releases',
          checkpoint: '21be7f27ec7ac545faa851fb7662573af2e47d11aaf33bbe9b33ba3221c95bf4'
  name 'Universal Media Server'
  homepage 'http://universalmediaserver.com'

  app 'Universal Media Server.app'
end
