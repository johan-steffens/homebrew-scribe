class Scribe < Formula
  desc "Personal productivity CLI/TUI agent companion"
  homepage "https://github.com/johan-steffens/scribe"
  url "https://github.com/johan-steffens/scribe/archive/refs/tags/v1.1.1.tar.gz"
  sha256 "2dac80d62b3d8c12b84d9b6e8ae9d039856b302bdbf5b879b78d417f65eda0b2"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args(features: ["mcp", "sync"])
  end

  test do
    assert_match "scribe #{version}", shell_output("#{bin}/scribe --version")
  end
end
