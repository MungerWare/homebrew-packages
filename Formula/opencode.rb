# Homebrew formula for the MungerWare-packaged opencode binary.
class Opencode < Formula
  desc "MungerWare-packaged opencode, the open source AI coding agent"
  homepage "https://github.com/Munger/opencode"
  url "https://github.com/Munger/opencode/releases/download/v1.18.11-mw.1/opencode-darwin-arm64"
  version "1.18.11-mw.1"
  sha256 "ac74a608a23e593ca1766b39b64c56fdd57f6eeccb58d006df0ba23381d0c6d0"
  license "MIT"

  def install
    bin.install "opencode-darwin-arm64" => "opencode"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/opencode --version")
  end
end
