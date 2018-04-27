cask 'yo' do
  version '2.0.1'
  sha256 '115218ea1bf39e5aa301740d00a2b0e17a5f31c2bc2f4bff5becd2da77d791f7'

  url "https://github.com/sheagcraig/yo/releases/download/#{version}/yo-#{version}.pkg"
  appcast 'https://github.com/sheagcraig/yo/releases.atom',
          checkpoint: 'f460197b7dcb8e784f654eb6c2e6d2adaa82baa2cd0c461c7c6bf0539cbed81f'
  name 'Yo Scheduler'
  homepage 'https://github.com/sheagcraig/yo'

  pkg "yo-#{version}.pkg"

  uninstall delete:    '/usr/local/bin/yo_scheduler',
            launchctl: [
                         'com.sheagcraig.yo.login_once',
                         'com.sheagcraig.yo.on_demand',
                       ],
            pkgutil:   'com.sheagcraig.yo'
end
