class Komac < Formula
  desc "Komac - Community Manifest Creator for Windows Package Manager (WinGet)"
  homepage "https://github.com/russellbanks/Komac"
  license "GPL-3.0"
  version "2.13.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/russellbanks/Komac/releases/download/v2.13.0/komac-2.13.0-x86_64-apple-darwin.tar.gz"
      sha256 "ea872d5ca91446f889fdd52aeaaca578642783ad38f9323e911b1490a842545f"

      def install
        bin.install "komac"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/russellbanks/Komac/releases/download/v2.13.0/komac-2.13.0-aarch64-apple-darwin.tar.gz"
      sha256 "992d3294d1483dd54c110a24895e91a202cfaab1a2467440a4e4f5f46f511540"

      def install
        bin.install "komac"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/russellbanks/Komac/releases/download/v2.13.0/komac-2.13.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "463e95ebeb9dd0338e5dec696aa3325fbfbec69a61a7991c497eeda077cfeb80"

      def install
        bin.install "komac"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/russellbanks/Komac/releases/download/v2.13.0/komac-2.13.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "912c212d62b1f13f9808b67d49ab36382e7c813eb64d53390840fe5473765e00"

      def install
        bin.install "komac"
      end
    end
  end

  test do
    system "#{bin}/komac --help"
  end
end
