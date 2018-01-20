cask 'zenmap' do
  version '7.60'
  sha256 'aadd159f6e1c8c763f0cd0be3923ade38529394c63537b8cea6f5ea48afb213e'

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
