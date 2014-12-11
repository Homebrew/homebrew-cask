cask :v1 => 'ynab' do
  version '4.3.655'
  sha256 '0635c56582a1367c2ca3a8ab88805ec89625f2c5042497e7f13081726b2238a3'

  url "https://www.youneedabudget.com/CDNOrigin/download/ynab4/liveCaptive/Mac/YNAB4_LiveCaptive_#{version}.dmg"
  homepage 'http://www.youneedabudget.com/'
  license :unknown    # todo: improve this machine-generated value

  app 'YNAB 4.app'
end
