cask 'zenmap' do
  version '7.80'
  sha256 '3009b316b719b3f3be6c4279b8a03ba85b2332ccb9eaf4e1469ebfe30f4ff96a'

  url "https://nmap.org/dist/nmap-#{version}.dmg"
  appcast 'https://nmap.org/dist/?C=M&O=D'
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
