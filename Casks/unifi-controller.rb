cask :v1_1 => 'unifi-controller' do
  version '4.7.6'
  sha256 'e8aa26d00e93e653146f706b7ce25fc18eff532e99f123025109fddaf043e81e'

  url "https://dl.ubnt.com/unifi/#{version}/UniFi.pkg"
  name 'UniFi Controller'
  homepage 'https://www.ubnt.com/download/unifi'
  license :commercial

  pkg 'UniFi.pkg'

  postflight do
    set_ownership '~/Library/Application Support/UniFi'
  end

  uninstall :pkgutil => 'com.ubnt.UniFi'
end
