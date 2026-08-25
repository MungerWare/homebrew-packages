# Homebrew formula for the MungerWare-packaged opencode binary.
class Opencode < Formula
  desc "MungerWare-packaged opencode, the open source AI coding agent"
  homepage "https://github.com/Munger/opencode"
  url "https://github.com/Munger/opencode/releases/download/v1.18.22-mw.1/opencode-darwin-arm64"
  version "1.18.22-mw.1"
  sha256 "9b051e3a3b8a53cdf79d8cd9b90f27405fb68f724fea469d70e20d90b99043f2"
  license "MIT"

  def install
    bin.install "opencode-darwin-arm64" => "opencode"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/opencode --version")
  end
end
