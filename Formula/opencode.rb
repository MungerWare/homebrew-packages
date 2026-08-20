# Homebrew formula for the MungerWare-packaged opencode binary.
class Opencode < Formula
  desc "MungerWare-packaged opencode, the open source AI coding agent"
  homepage "https://github.com/Munger/opencode"
  url "https://github.com/Munger/opencode/releases/download/v1.18.9-mw.1/opencode-darwin-arm64"
  version "1.18.9-mw.1"
  sha256 "dbf866093999dd56ba127e55e604061604a5d9bdaa92ac4a5b3b6e4e5a513215"
  license "MIT"

  def install
    bin.install "opencode-darwin-arm64" => "opencode"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/opencode --version")
  end
end
