defmodule BoganIpsum.Mixfile do
  use Mix.Project

  def project do
    [ app: :bogan_ipsum,
      version: "0.0.2",
      elixir: "~> 0.10.2-dev",
      deps: deps ]
  end

  # Configuration for the OTP application
  def application do
    []
  end

  # Returns the list of dependencies in the format:
  # { :foobar, "~> 0.1", git: "https://github.com/elixir-lang/foobar.git" }
  defp deps do
    [
      { :jazz, github: 'meh/jazz' }
    ]
  end
end
