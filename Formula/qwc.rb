  class Qwc < Formula
    desc "A utility to count things. Quickly."
    homepage "https://github.com/KroqueJa/qwc"
    version "0.4.0"
    license "MIT"

    on_macos do
      on_arm do
        url "https://github.com/KroqueJa/qwc/releases/download/v#{version}/qwc-macos-arm64.tar.gz"
        sha256 "5e54908e07da8e3d117ba9f4456a69b874938181d70a044cd2aa6b246d5427aa"
      end
    end

    on_linux do
      on_intel do
        url "https://github.com/KroqueJa/qwc/releases/download/v#{version}/qwc-linux-x86_64.tar.gz"
        sha256 "e19dca83983de1f329319d4dc498565762f8854887a2631e3c7fa22b4cde4816"
      end
    end
  
    def install
      bin.install "qwc"
    end

    test do
      assert_match "qwc", shell_output("#{bin}/qwc --version")
    end
  end
