# Homebrew formula for the MungerWare-packaged opencode binary.
class Opencode < Formula
  desc "MungerWare-packaged opencode, the open source AI coding agent"
  homepage "https://github.com/Munger/opencode"
  url "https://github.com/Munger/opencode/releases/download/v1.18.15-mw.1/opencode-darwin-arm64"
  version "1.18.15-mw.1"
  sha256 "3ae2bdafb9af7077ca6d6b49c4dd3aec4e24f7c5d3a1a48dc4d4b607bf7cac3a"
  license "MIT"

  def install
    bin.install "opencode-darwin-arm64" => "opencode"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/opencode --version")
  end
end
