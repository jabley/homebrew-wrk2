class Wrk2 < Formula
  desc "HTTP benchmarking tool"
  homepage "https://github.com/giltene/wrk2"
  sha256 "c4250acb6921c13f8dccfc162d894bd7135a2979"
  head "https://github.com/giltene/wrk2.git"

  depends_on "openssl"

  conflicts_with "wrk-trello", :because => "both install `wrk` binaries"
  conflicts_with "wrk", :because => "both install `wrk` binaries"

  def install
    ENV.j1
    system "make"
    bin.install "wrk"
  end

  test do
    system *%W[#{bin}/wrk -r 5 -c 1 -t 1 -d 1 https://example.com/]
  end
end
