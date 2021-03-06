defmodule NumEx.Mixfile do
  use Mix.Project

  def project do
    [
      app: :numex,
      version: "0.1.0",
      elixir: "~> 1.5",
      start_permanent: Mix.env == :prod,
      deps: deps(),

      #Docs
      name: "NumEx",
      source_url: "https://gitlab.com/MahathiVavilala/numex",
      docs: [  main: "NumEx",
               extras: ["README.md"]
            ]
    ]
  end

  def oackage do
    [
      maintainers: ["Mahathi Vavilala", "Sravya Nimmagadda"],
      licenses: ["TalentSprint", "BVRITH"],
      links: %{"GitLab" => "https://gitlab.com/MahathiVavilala/numex"}
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
     applications: [:complex_num],
     extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.

  defp deps do
    [
      # {:dep_from_git, git: "https://github.com/elixir-lang/my_dep.git", tag: "0.1.0"},
      {:ex_doc, "~> 0.16", only: [:dev], runtime: false},
      {:complex_num, "~> 1.0.0"},
      {:decimal, "~> 1.0"},
      {:dialyxir, "~> 0.3", only: [:dev]},
      {:earmark, "~> 1.1", only: [:dev]},
    ]
  end
end
