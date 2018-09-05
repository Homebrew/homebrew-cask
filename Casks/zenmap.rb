cask 'zenmap' do
  version '7.70'
  sha256 'f64d24fecd286af015a2247ca77ac6cb090f1be1ab4e92cdf62bdc5bcd60d267'

  url "https://nmap.org/dist/nmap-#{version}.dmg"
  name 'Zenmap'
  homepage 'https://nmap.org/zenmap/'

  depends_on formula: 'nmap'

  pkg "nmap-#{version}.mpkg",
      choices: [
                 {
                   'choiceIdentifier' => 'org.insecure.nmap',
                   'choiceAttribute'  => 'selected',
                   'attributeSetting' => 0,
                 },
                 {
                   'choiceIdentifier' => 'org.insecure.nmap.ncat',
                   'choiceAttribute'  => 'selected',
                   'attributeSetting' => 0,
                 },
                 {
                   'choiceIdentifier' => 'org.insecure.nmap.ndiff',
                   'choiceAttribute'  => 'selected',
                   'attributeSetting' => 0,
                 },
                 {
                   'choiceIdentifier' => 'org.insecure.nmap.nping',
                   'choiceAttribute'  => 'selected',
                   'attributeSetting' => 0,
                 },
                 {
                   'choiceIdentifier' => 'org.insecure.nmap.nmap-update',
                   'choiceAttribute'  => 'selected',
                   'attributeSetting' => 0,
                 },
                 {
                   'choiceIdentifier' => 'org.insecure.nmap.zenmap',
                   'choiceAttribute'  => 'selected',
                   'attributeSetting' => 1,
                 },
               ]

  uninstall pkgutil: 'org.insecure.nmap.zenmap'

  zap trash: [
               '~/Library/Saved Application State/org.insecure.Zenmap.savedState',
               '~/.zenmap',
             ]
end
