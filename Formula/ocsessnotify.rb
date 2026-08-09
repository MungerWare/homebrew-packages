# Homebrew formula for ocsessnotify, the opencode session notifier.
class Ocsessnotify < Formula
  desc "Post a message to the most recent opencode session on the LAN"
  homepage "https://github.com/Munger/InfraTools"
  url "https://raw.githubusercontent.com/Munger/InfraTools/ocsessnotify-v1.0.3/ocsessnotify/usr/local/bin/ocsessnotify"
  version "1.0.3"
  sha256 "6ed58e9b8440e6badb5faeaed342572b2eca94fdb51626de002b2b9c1f9a7e2d"
  license "MIT"

  depends_on "jq"

  def install
    bin.install "ocsessnotify"
  end

  test do
    assert_match "ocsessnotify", shell_output("#{bin}/ocsessnotify --help")
  end
end
