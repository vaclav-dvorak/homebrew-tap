# typed: false
# frozen_string_literal: true

class VeribiCli < Formula
  desc "Command line interface for Veribi platform"
  homepage "https://veribi.cz/"
  version "0.1.12"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/vaclav-dvorak/veribi-cli/releases/download/v0.1.11/veribi_darwin_arm64.tar.gz"
      sha256 "8662944da45119f2b57c1bc14821c1a55b84401dc9f3020006dac4370a3f46b8"

      def install
        bin.install "veribi"
        bash_completion.install "completion/bash/veribi.bash" => "veribi"
        zsh_completion.install "completion/zsh/_veribi" => "_veribi"
        fish_completion.install "completion/fish/veribi.fish"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/vaclav-dvorak/veribi-cli/releases/download/v0.1.11/veribi_darwin_amd64.tar.gz"
      sha256 "91f8b81dc9358397e00ca22a1838308f7bef80155ebed8837aa01b9fee134edf"

      def install
        bin.install "veribi"
        bash_completion.install "completion/bash/veribi.bash" => "veribi"
        zsh_completion.install "completion/zsh/_veribi" => "_veribi"
        fish_completion.install "completion/fish/veribi.fish"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/vaclav-dvorak/veribi-cli/releases/download/v0.1.12/veribi_linux_amd64.tar.gz"
      sha256 "4cdf2cd224b3190fc80035f2c5ebf1cf754c2596315c2cf9b426e903bdb5ff04"

      def install
        bin.install "veribi"
        bash_completion.install "completion/bash/veribi.bash" => "veribi"
        zsh_completion.install "completion/zsh/_veribi" => "_veribi"
        fish_completion.install "completion/fish/veribi.fish"
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/vaclav-dvorak/veribi-cli/releases/download/v0.1.11/veribi_linux_arm.tar.gz"
      sha256 "3b4a61b7c3e003ba9b1385ca9fa7fbf9f219a8065b4c1f7683928045b26fbbbb"

      def install
        bin.install "veribi"
        bash_completion.install "completion/bash/veribi.bash" => "veribi"
        zsh_completion.install "completion/zsh/_veribi" => "_veribi"
        fish_completion.install "completion/fish/veribi.fish"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/vaclav-dvorak/veribi-cli/releases/download/v0.1.11/veribi_linux_arm64.tar.gz"
      sha256 "accc712d01b7ac896495696c04fe77415bfc37efbed4317a85620d510e739c88"

      def install
        bin.install "veribi"
        bash_completion.install "completion/bash/veribi.bash" => "veribi"
        zsh_completion.install "completion/zsh/_veribi" => "_veribi"
        fish_completion.install "completion/fish/veribi.fish"
      end
    end
  end

  test do
    system "#{bin}/veribi", "--help"
  end
end
