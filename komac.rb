class Komac < Formula
  desc "Komac - Community Manifest Creator for Windows Package Manager (WinGet)"
  homepage "https://github.com/russellbanks/Komac"
  license "GPL-3.0"
  version "2.4.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/russellbanks/Komac/releases/download/v2.4.0/komac-2.4.0-x86_64-apple-darwin.tar.gz"
      sha256 "a3d569aaa24bfc8dd99b8a369f40d079e003740cd3e3329afd29f9942aaa607e"

      def install
        bin.install "komac"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/russellbanks/Komac/releases/download/v2.4.0/komac-2.4.0-aarch64-apple-darwin.tar.gz"
      sha256 "db2d2d0f190a2769536ccf803e1adddcf564f14df9ebd73f60ae125ba9cc0c24"

      def install
        bin.install "komac"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/russellbanks/Komac/releases/download/v2.4.0/komac-2.4.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "36ddd1fc9b68104a0fc38443ab6f66a74121bb5dbbb2bf0c8daa44a7e28bf02c"

      def install
        bin.install "komac"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/russellbanks/Komac/releases/download/v2.4.0/komac-2.4.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "12eeab164f4794fa81e9f43ddff2cfb7508ee7774efaada999b19e2056b0aec5"

      def install
        bin.install "komac"
      end
    end
  end

  test do
    system "#{bin}/komac --help"
  end
end
