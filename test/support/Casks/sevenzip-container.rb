class SevenzipContainer < TestCask
  version '1.2.3'
  sha256 '1550701e7848fcb94f5b0085cca527083a8662ddeb8c0a7bc5af6bd145797cc1'

  url TestHelper.local_binary_url('sevenzipcontainer.7z')
  homepage 'http://example.com/sevenzip-container'

  depends_on :formula => 'unar'
  app 'sevenzipcontainer/Application.app'
end
