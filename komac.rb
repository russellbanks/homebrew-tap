class Komac < Formula
  desc "Komac - Community Manifest Creator for Windows Package Manager (WinGet)"
  homepage "https://github.com/russellbanks/Komac"
  license "GPL-3.0"
  version "2.9.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/russellbanks/Komac/releases/download/v2.9.0/komac-2.9.0-x86_64-apple-darwin.tar.gz"
      sha256 "fd0d1117df4911cdd9fc0fba11edfdf19ed52103bf51bbf734de503c004f8f38"

      def install
        bin.install "komac"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/russellbanks/Komac/releases/download/v2.9.0/komac-2.9.0-aarch64-apple-darwin.tar.gz"
      sha256 "b0fc119340af74f33ebb60aa1bf40d6d583ba7bb45b1bcae2ed70caa44d20d2e"

      def install
        bin.install "komac"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/russellbanks/Komac/releases/download/v2.9.0/komac-2.9.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "d07a12831ad5418fee715488542a98ce3c0e591d05c850dd149fe78432be8c4c"

      def install
        bin.install "komac"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/russellbanks/Komac/releases/download/v2.9.0/komac-2.9.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "bc841bded409d65370bcf0f49d9358c5959a2a4363170c14df4fccf7491173b8"

      def install
        bin.install "komac"
      end
    end
  end

  test do
    system "#{bin}/komac --help"
  end
end
