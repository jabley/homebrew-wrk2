# homebrew-wrk2

Personal Homebrew Tap. Initially, it is for [wrk2 with ARM support](https://github.com/outsinre/wrk2).

## Homebrew

```sh
~ $ brew tap outsinre/wrk2

# latest
~ $ brew install --HEAD outsinre/wrk2/wrk2

# release
~ $ brew install outsinre/wrk2/wrk2
```

## Boxen

```puppet
homebrew::tap { 'outsinre/wrk2': }
```

```yaml
boxen::personal::homebrew_packages:
  - wrk2
```
