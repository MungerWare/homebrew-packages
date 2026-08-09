# Homebrew formula for ocsessnotify, the opencode session notifier.
class Ocsessnotify < Formula
  desc "Post a message to the most recent opencode session on the LAN"
  homepage "https://github.com/Munger/InfraTools"
  url "https://raw.githubusercontent.com/Munger/InfraTools/ocsessnotify-v1.0.2/ocsessnotify/usr/local/bin/ocsessnotify"
  version "1.0.2"
  sha256 "65a26c172180279c1039113af14e19dd63c731ef3248f04a07eaee73396a7ea0"
  license "MIT"

  depends_on "jq"

  def install
    bin.install "ocsessnotify"
  end

  test do
    assert_match "ocsessnotify", shell_output("#{bin}/ocsessnotify --help")
  end
end
