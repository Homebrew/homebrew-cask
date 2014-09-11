class SevenzipContainer < TestCask
  url TestHelper.local_binary('sevenzipcontainer.7z')
  homepage 'http://example.com/sevenzip-container'
  version '1.2.3'
  sha256 '1550701e7848fcb94f5b0085cca527083a8662ddeb8c0a7bc5af6bd145797cc1'
  depends_on :formula => 'unar'
  link 'sevenzipcontainer/Application.app'
end
