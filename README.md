# guix-configuration
Own defined GNU Guix configuration channel

## How to add this channel in GNU Guix
Add following code in `~/.config/guix/channels.scm`:

```scheme
(cons (channel
       (name 'gabrielepace)
       (url "https://github.com/gabrielepace/guix-configuration.git")
       (branch "main"))
      %default-channels)
```

If `channels.scm` file is not available, create it.

After adding, run in a Terminal `guix pull` (as root).

Run `guix pull --list-generations` (as root) to check if was correctly added.
