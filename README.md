# guix-configuration
Own defined GNU Guix configuration channel

## How to use it as a channel in GNU Guix
Add following code in `~/.config/guix/channels.scm`:

```scheme
(cons (channel
        (name 'gabrielepace)
        (url "https://github.com/gabrielepace/guix-configuration.git")
        (branch "main"))
      %default-channels)
```

If `channels.scm` file is not available, create it.

After adding, run in a Terminal `$ guix pull` (as root).

Run `$ guix pull --list-generations` (as root) to check if was correctly added.

## How to use it as a build to install in GNU Guix

Download this repository or run in a Terminal `$ git clone https://github.com/gabrielepace/guix-configuration`.

After downloading it, go to the folder where it was downloaded and run:

`$ guix build -L ./guix-configuration <package-name>` (write in `<package-name>` a package defined inside a *scm file in `gabrielepace/packages`)
