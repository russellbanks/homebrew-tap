class Komac < Formula
  desc "Komac - Community Manifest Creator for Windows Package Manager (WinGet)"
  homepage "https://github.com/russellbanks/Komac"
  license "GPL-3.0"
  version "2.1.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/russellbanks/Komac/releases/download/v2.1.0/KomacPortable-macos-x64.tar.gz"
      sha256 "a8345403cf2243daa2aeda9090a23fb435b929ba2b32a50e3a5f0ca68c9aebe4"

      def install
        bin.install "KomacPortable-macos-x64" => "komac"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/russellbanks/Komac/releases/download/v2.1.0/KomacPortable-macos-arm64.tar.gz"
      sha256 "867ff0033e26e46efd2b79a32d8841320b1e173578d77a09593f66be11736e1e"

      def install
        bin.install "KomacPortable-macos-arm64" => "komac"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/russellbanks/Komac/releases/download/v2.1.0/KomacPortable-linux-x64.tar.gz"
      sha256 "3e208070d83a4014981bc195354bb2226fa563d39ff59372655934d24fc7b1bd"

      def install
        bin.install "KomacPortable-linux-x64" => "komac"
      end
    end
    if Hardware::CPU.intel? && !Hardware::CPU.is_64_bit?
      url "https://github.com/russellbanks/Komac/releases/download/v2.1.0/KomacPortable-linux-x86.tar.gz"
      sha256 "c9ad8a777eacf562a481a8ec13821e5f376e4789effc626f5869f88b8c66b921"

      def install
        bin.install "KomacPortable-linux-x86" => "komac"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/russellbanks/Komac/releases/download/v2.1.0/KomacPortable-linux-arm64.tar.gz"
      sha256 "5f0d71d7f8c713531fe8ff154f1a0ea7b423d1938b5683462e301bb82e207836"

      def install
        bin.install "KomacPortable-linux-arm64" => "komac"
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/russellbanks/Komac/releases/download/v2.1.0/KomacPortable-linux-armv7.tar.gz"
      sha256 "d65746d29c027b40dd656ec948234d59720bdd9194e768f6dc280c0abda093df"

      def install
        bin.install "KomacPortable-linux-armv7" => "komac"
      end
    end
  end

  test do
    system "#{bin}/komac --help"
  end
end
