# Contributing

## Scope

This repository contains a standalone flake for packaging Orca Slicer on NixOS.

Good contributions include:

- release update fixes
- packaging fixes
- patch maintenance
- dependency compatibility fixes
- documentation improvements

## Development workflow

1. Make your change.
1. Run the update script if your change updates the packaged Orca Slicer version:

```bash
./update-orca-slicer.sh
```

1. If you want stable releases only during testing:

```bash
ORCA_RELEASE_CHANNEL=stable ./update-orca-slicer.sh
```

1. Verify the package builds:

```bash
nix build .#orca-slicer -L
```

1. If you are only checking metadata updates, you may skip build verification explicitly:

```bash
ORCA_SKIP_BUILD=1 ./update-orca-slicer.sh
```

## Pull requests

Please keep pull requests focused and minimal.

When opening a pull request, include:

- what changed
- why it changed
- how you verified it

If the change affects patches or build behavior, include the relevant build output summary.

## Style guidelines

- keep changes easy to review
- avoid unrelated refactors
- prefer simple shell and Nix changes over extra tooling
- update documentation when behavior changes

## Reporting issues

When reporting a problem, include:

- your NixOS or nixpkgs revision
- the failing command
- the error output
- whether the issue reproduces with a clean build

## License

By contributing to this repository, you agree that your contributions are provided under the repository license.
