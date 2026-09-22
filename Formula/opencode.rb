# Homebrew formula for the MungerWare-packaged opencode binary.
class Opencode < Formula
  desc "MungerWare-packaged opencode, the open source AI coding agent"
  homepage "https://github.com/Munger/opencode"
  url "https://github.com/Munger/opencode/releases/download/v1.18.32-mw.1/opencode-darwin-arm64"
  version "1.18.32-mw.1"
  sha256 "ba7b352787586e9c045e5be154a54cdadcf8dcd76a1e856ddfe880b1891542ed"
  license "MIT"

  def install
    bin.install "opencode-darwin-arm64" => "opencode"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/opencode --version")
  end
end
