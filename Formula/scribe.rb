class Scribe < Formula
  desc "Personal productivity CLI/TUI agent companion"
  homepage "https://github.com/johan-steffens/scribe"
  url "https://github.com/johan-steffens/scribe/archive/refs/tags/v1.1.4.tar.gz"
  sha256 "502d1aee26ccabc9d90dba10a732b508f5fbad7ecb20893bcc091cdc413c6639"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args(features: ["mcp", "sync"])
  end

  test do
    assert_match "scribe #{version}", shell_output("#{bin}/scribe --version")
  end
end
