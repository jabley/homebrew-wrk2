# homebrew-wrk2

Homebrew tap for installing [wrk2](https://github.com/GilTene/wrk2)

## Homebrew

```sh
$ brew tap jabley/homebrew-wrk2
$ brew install wrk2
```

## Boxen

```puppet
homebrew::tap { 'jabley/homebrew-wrk2': }
```

```yaml
boxen::personal::homebrew_packages:
  - wrk2
```
