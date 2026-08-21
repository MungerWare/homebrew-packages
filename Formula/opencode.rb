# Homebrew formula for the MungerWare-packaged opencode binary.
class Opencode < Formula
  desc "MungerWare-packaged opencode, the open source AI coding agent"
  homepage "https://github.com/Munger/opencode"
  url "https://github.com/Munger/opencode/releases/download/v1.18.19-mw.1/opencode-darwin-arm64"
  version "1.18.19-mw.1"
  sha256 "cb1d03d0e6b08cb3e965dba7f10d367a8112ed0a92fd52dec096427f2be9287e"
  license "MIT"

  def install
    bin.install "opencode-darwin-arm64" => "opencode"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/opencode --version")
  end
end
