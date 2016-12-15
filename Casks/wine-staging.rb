cask 'wine-staging' do
  version '1.9.23'
  sha256 '20b6f450642e3ec2ffc2a170ad5f6d8872b4389960500f1421534385c5ea2ae3'

  url "https://repos.wine-staging.com/macosx/i686/winehq-staging-#{version}.pkg"
  name 'WineHQ-staging'
  homepage 'https://www.wine-staging.com/'

  depends_on cask: 'xquartz'

  pkg "winehq-staging-#{version}.pkg"

  uninstall pkgutil: [
                       'org.winehq.wine-staging',
                       'org.winehq.wine-staging-deps',
                       'org.winehq.wine-staging-deps64',
                       'org.winehq.wine-staging32',
                       'org.winehq.wine-staging64',
                     ]
            delete:  '/Applications/Wine Staging.app'
end
