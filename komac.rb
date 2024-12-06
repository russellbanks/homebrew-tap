class Komac < Formula
  desc "Komac - Community Manifest Creator for Windows Package Manager (WinGet)"
  homepage "https://github.com/russellbanks/Komac"
  license "GPL-3.0"
  version "2.8.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/russellbanks/Komac/releases/download/v2.8.0/komac-2.8.0-x86_64-apple-darwin.tar.gz"
      sha256 "7a1041994106d986c90b27d76c996a95b6882d1b31ec95ec6b4ff11477bbf80f"

      def install
        bin.install "komac"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/russellbanks/Komac/releases/download/v2.8.0/komac-2.8.0-aarch64-apple-darwin.tar.gz"
      sha256 "a1e5b81a86521de42d3d5e9eefb65d33f6622543e4b123efa517ef759eadb46f"

      def install
        bin.install "komac"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/russellbanks/Komac/releases/download/v2.8.0/komac-2.8.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "74de450eefa8a460b5bd17d283183253cd7bf12ee07f64ae21eb2260f69bba1b"

      def install
        bin.install "komac"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/russellbanks/Komac/releases/download/v2.8.0/komac-2.8.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "60b070fcdebf71d3af9f3d93d815f94e58db52f8cecda713114db3e62b2d79a2"

      def install
        bin.install "komac"
      end
    end
  end

  test do
    system "#{bin}/komac --help"
  end
end
