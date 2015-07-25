cask :v1 => 'tiny' do
  version '1.0.5'
  sha256 'a525930919b2cf1ecb60531e5f8787d8657464f861a922e280fdf10a71d0a581'

  # The official download comes from the same domain as the homepage.
  # The website is hosted on github pages, so the github link is used
  # to allow for a trusted https connection.
  url 'https://raw.githubusercontent.com/nicnocquee/delightfuldev-website/gh-pages/tiny/Tiny.zip'
  appcast 'https://raw.githubusercontent.com/nicnocquee/delightfuldev-website/gh-pages/tiny/update.xml',
          :sha256 => '3c630fc76fda5c9e1704b1d1a84c43a0a6c96905acb70a4e1c6b71fef9806165'
  name 'Tiny'
  homepage 'http://www.delightfuldev.com/tiny/'
  license :gratis

  app 'Tiny.app'

  depends_on :macos => '>= 10.10'
end
