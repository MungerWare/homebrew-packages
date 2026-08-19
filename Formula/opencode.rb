# Homebrew formula for the MungerWare-packaged opencode binary.
class Opencode < Formula
  desc "MungerWare-packaged opencode, the open source AI coding agent"
  homepage "https://github.com/Munger/opencode"
  url "https://github.com/Munger/opencode/releases/download/v1.18.10-mw.1/opencode-darwin-arm64"
  version "1.18.10-mw.1"
  sha256 "b981db2fab7dc74324bb53fcbb01d4f41edbb8ee3bdf75d24fd0f640bdd19f93"
  license "MIT"

  def install
    bin.install "opencode-darwin-arm64" => "opencode"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/opencode --version")
  end
end
