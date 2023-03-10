# typed: false
# frozen_string_literal: true

class VeribiCli < Formula
  desc "Command line interface for Veribi platform"
  homepage "https://veribi.cz/"
  version "0.1.10"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/vaclav-dvorak/veribi-cli/releases/download/v0.1.7/veribi_darwin_arm64.tar.gz"
      sha256 "0520d00d6cf819726a25d971ba20437344e20b1629739720a082b727034990e3"

      def install
        bin.install "veribi"
        bash_completion.install "completion/bash/veribi.bash" => "veribi"
        zsh_completion.install "completion/zsh/_veribi" => "_veribi"
        fish_completion.install "completion/fish/veribi.fish"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/vaclav-dvorak/veribi-cli/releases/download/v0.1.7/veribi_darwin_amd64.tar.gz"
      sha256 "e714fc98692b12d30f633f533b636301a82472da3532ee8e34c4ae31071d46d8"

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
      url "https://github.com/vaclav-dvorak/veribi-cli/releases/download/v0.1.10/veribi_linux_amd64.tar.gz"
      sha256 "f9cfb9dd577637eb75c26b2be7817eaf25bf1e5390119cc77e45bee86e54aabb"

      def install
        bin.install "veribi"
        bash_completion.install "completion/bash/veribi.bash" => "veribi"
        zsh_completion.install "completion/zsh/_veribi" => "_veribi"
        fish_completion.install "completion/fish/veribi.fish"
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/vaclav-dvorak/veribi-cli/releases/download/v0.1.7/veribi_linux_arm.tar.gz"
      sha256 "52b3f9de1c16c6c9eaf9655b54f4d89c154c811e72aa660f1ba08acf7f24f7c5"

      def install
        bin.install "veribi"
        bash_completion.install "completion/bash/veribi.bash" => "veribi"
        zsh_completion.install "completion/zsh/_veribi" => "_veribi"
        fish_completion.install "completion/fish/veribi.fish"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/vaclav-dvorak/veribi-cli/releases/download/v0.1.7/veribi_linux_arm64.tar.gz"
      sha256 "7fd883e2b3238c040667cd8598d56370db2c387fb3915224eaf9c503c36dd9b1"

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
