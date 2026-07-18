class Scribe < Formula
  desc "Personal productivity CLI/TUI agent companion"
  homepage "https://github.com/johan-steffens/scribe"
  url "https://github.com/johan-steffens/scribe/archive/refs/tags/v1.1.3.tar.gz"
  sha256 "7eaabf25202e8983b190b2f87f637a4ef2fd0c270a556492ff0f2a0c5c52ac0a"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args(features: ["mcp", "sync"])
  end

  test do
    assert_match "scribe #{version}", shell_output("#{bin}/scribe --version")
  end
end
