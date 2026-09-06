# Homebrew formula for the MungerWare-packaged opencode binary.
class Opencode < Formula
  desc "MungerWare-packaged opencode, the open source AI coding agent"
  homepage "https://github.com/Munger/opencode"
  url "https://github.com/Munger/opencode/releases/download/v1.18.28-mw.1/opencode-darwin-arm64"
  version "1.18.28-mw.1"
  sha256 "fff8dac02946c3cbc3c4f0c89e46f21a7c0aceafd8ac3eb5db1ab72fc77423ac"
  license "MIT"

  def install
    bin.install "opencode-darwin-arm64" => "opencode"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/opencode --version")
  end
end
