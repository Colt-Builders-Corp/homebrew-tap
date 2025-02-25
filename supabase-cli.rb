# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class SupabaseCli < Formula
  desc "Supabase CLI"
  homepage "https://github.com/Colt-Builders-Corp/supabase-cli"
  version "0.26.9"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Colt-Builders-Corp/supabase-cli/releases/download/v0.26.9/supabase-cli_0.26.9_darwin_arm64.tar.gz"
      sha256 "40b8d8c62a6bcd3fc896d211e3c9d31a702f6d8e0246f94bac1da11bf3a1f7d0"

      def install
        bin.install "supabase"
        (bash_completion/"supabase").write `#{bin}/supabase completion bash`
        (fish_completion/"supabase.fish").write `#{bin}/supabase completion fish`
        (zsh_completion/"_supabase").write `#{bin}/supabase completion zsh`
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/Colt-Builders-Corp/supabase-cli/releases/download/v0.26.9/supabase-cli_0.26.9_darwin_amd64.tar.gz"
      sha256 "ce0fe74e8857854f56475bd829798767ded9c9584fcf80770298f1f3caeb3e8c"

      def install
        bin.install "supabase"
        (bash_completion/"supabase").write `#{bin}/supabase completion bash`
        (fish_completion/"supabase.fish").write `#{bin}/supabase completion fish`
        (zsh_completion/"_supabase").write `#{bin}/supabase completion zsh`
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/Colt-Builders-Corp/supabase-cli/releases/download/v0.26.9/supabase-cli_0.26.9_linux_amd64.tar.gz"
      sha256 "d32b212e0281f1fdd9e49d0f9ef9557e9d7508877295d695c8427f179ff65910"

      def install
        bin.install "supabase"
        (bash_completion/"supabase").write `#{bin}/supabase completion bash`
        (fish_completion/"supabase.fish").write `#{bin}/supabase completion fish`
        (zsh_completion/"_supabase").write `#{bin}/supabase completion zsh`
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/Colt-Builders-Corp/supabase-cli/releases/download/v0.26.9/supabase-cli_0.26.9_linux_arm64.tar.gz"
      sha256 "646f063d0e218ad4a18ef3ab178be0e0cc748d7f9e8364c85df567cef9af962e"

      def install
        bin.install "supabase"
        (bash_completion/"supabase").write `#{bin}/supabase completion bash`
        (fish_completion/"supabase.fish").write `#{bin}/supabase completion fish`
        (zsh_completion/"_supabase").write `#{bin}/supabase completion zsh`
      end
    end
  end
end
