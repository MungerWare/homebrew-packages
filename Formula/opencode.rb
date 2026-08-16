# Homebrew formula for the MungerWare-packaged opencode binary.
class Opencode < Formula
  desc "MungerWare-packaged opencode, the open source AI coding agent"
  homepage "https://github.com/Munger/opencode"
  url "https://github.com/Munger/opencode/releases/download/v1.18.17-mw.1/opencode-darwin-arm64"
  version "1.18.17-mw.1"
  sha256 "2be81ad7d5fb2a8ce351ff316d6beb05268fab15f055a01eaf419e82fa167291"
  license "MIT"

  def install
    bin.install "opencode-darwin-arm64" => "opencode"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/opencode --version")
  end
end
