# Homebrew formula for the MungerWare-packaged opencode binary.
class Opencode < Formula
  desc "MungerWare-packaged opencode, the open source AI coding agent"
  homepage "https://github.com/Munger/opencode"
  url "https://github.com/Munger/opencode/releases/download/v1.18.26-mw.1/opencode-darwin-arm64"
  version "1.18.26-mw.1"
  sha256 "d3cfa1156670407b8039970b3354e7df063df134fb7199eb2033bbcca554ddeb"
  license "MIT"

  def install
    bin.install "opencode-darwin-arm64" => "opencode"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/opencode --version")
  end
end
