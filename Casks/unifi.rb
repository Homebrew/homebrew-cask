cask 'unifi' do
  version '5.4.14'
  sha256 '8e9927872bdffc124e9d85d127ce60c9ff7151d9257c2fb10e2e6475aab94e7a'

  url 'https://dl.ubnt.com/unifi/5.4.14/UniFi.pkg'
  name 'UniFi'
  homepage 'https://community.ubnt.com/t5/UniFi-Updates-Blog/UniFi-5-4-14-Stable-has-been-released/ba-p/1890625'

  pkg 'UniFi.pkg'

  uninstall pkgutil: 'com.ubnt.UniFi',
            trash:   [
                       '/Applications/UniFi.app',
                       '/Applications/UniFi-Discover.app',
                     ]
end
