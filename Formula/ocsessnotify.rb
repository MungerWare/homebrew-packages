# Homebrew formula for ocsessnotify, the opencode session notifier.
class Ocsessnotify < Formula
  desc "Post a message to the most recent opencode session on the LAN"
  homepage "https://github.com/Munger/InfraTools"
  url "https://raw.githubusercontent.com/Munger/InfraTools/ocsessnotify-v1.0.1/ocsessnotify/usr/local/bin/ocsessnotify"
  version "1.0.1"
  sha256 "8a5148ca6b14a2fd8d0a7b622b0d6372b5b5139056126b3466be5d9be7849027"
  license "MIT"

  depends_on "jq"

  def install
    bin.install "ocsessnotify"
  end

  test do
    assert_match "ocsessnotify", shell_output("#{bin}/ocsessnotify --help")
  end
end
