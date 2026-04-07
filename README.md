# plotnine-fluid

This repository hosts a Quarto website for experimenting with plotnine examples,
including Anscombe's Quartet, Please, I Want Some More Labels, and A Bar Plot
With 2 Variables, plus guide notebooks for Geometric Objects and Aesthetic
Mappings, Scale Basics, and Facets.

## Getting started

```bash
uv sync
uv run ./scripts/register-kernel.sh
quarto preview
```

## Quarto kernel

Quarto should use a named Jupyter kernel that points at this project's
`.venv`, rather than whichever `python3` or default kernel happens to be
available on the machine.

Register or refresh the kernel with:

```bash
uv run ./scripts/register-kernel.sh
```

That installs a kernelspec named `plotnine-fluid`, which is what `_quarto.yml`
uses for Jupyter execution. The `uv run` wrapper makes sure the registration is
performed from this project's `.venv`, so Quarto stays pinned to the same
environment you use for development.
