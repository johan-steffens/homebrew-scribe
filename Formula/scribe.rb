class Scribe < Formula
  desc "Personal productivity CLI/TUI agent companion"
  homepage "https://github.com/johan-steffens/scribe"
  url "https://github.com/johan-steffens/scribe/archive/refs/tags/v1.1.0.tar.gz"
  sha256 "5182bfc8a98922d9b1071e3e7b795e73baa47c99080ab7d188299f5c98f075a8"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args(features: ["mcp", "sync"])
  end

  test do
    assert_match "scribe #{version}", shell_output("#{bin}/scribe --version")
  end
end
