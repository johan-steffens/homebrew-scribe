class Scribe < Formula
  desc "Personal productivity CLI/TUI agent companion"
  homepage "https://github.com/johan-steffens/scribe"
  url "https://github.com/johan-steffens/scribe/archive/refs/tags/v1.0.12.tar.gz"
  sha256 "5719d42d53b3ee203347c01751ac8ee72915a081f403158c4b7370ed54301ba9"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args(features: ["mcp", "sync"])
  end

  test do
    assert_match "scribe #{version}", shell_output("#{bin}/scribe --version")
  end
end
