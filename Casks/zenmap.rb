cask 'zenmap' do
  version '7.50'
  sha256 '03d03fbbf2b3648d611a788781773efe13447abf512dd76f0c791e9ce7c6991c'

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

  zap delete: '~/Library/Saved Application State/org.insecure.Zenmap.savedState'
end
