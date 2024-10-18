# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/) and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## Public API

The [public API](https://semver.org/spec/v2.0.0.html#spec-item-1) of this project is defined by the `install.yaml`
file and `project_files` listed in the `install.yaml` file.

---

## [1.7.4](https://github.com/julienloizelet/ddev-tools/releases/tag/v1.7.4) - 2024-10-18

[_Compare with previous release_](https://github.com/julienloizelet/ddev-tools/compare/v1.7.3...v1.7.4)

### Fixed

- Add missing `#ddev-generated` comment in `config.php83missing.yaml` file

---

## [1.7.3](https://github.com/julienloizelet/ddev-tools/releases/tag/v1.7.3) - 2024-10-09

[_Compare with previous release_](https://github.com/julienloizelet/ddev-tools/compare/v1.7.2...v1.7.3)

### Fixed

- Fix nothing: this release is only for test purpose

---

## [1.7.2](https://github.com/julienloizelet/ddev-tools/releases/tag/v1.7.2) - 2024-10-09

[_Compare with previous release_](https://github.com/julienloizelet/ddev-tools/compare/v1.7.1...v1.7.2)

### Fixed

- Fix nothing: this release is only for test purpose

---

## [1.7.1](https://github.com/julienloizelet/ddev-tools/releases/tag/v1.7.1) - 2024-10-09

[_Compare with previous release_](https://github.com/julienloizelet/ddev-tools/compare/v1.7.0...v1.7.1)

### Fixed

- Fix nothing: this release is only for test purpose

---


## [1.7.0](https://github.com/julienloizelet/ddev-tools/releases/tag/v1.7.0) - 2024-01-25

[_Compare with previous release_](https://github.com/julienloizelet/ddev-tools/compare/v1.6.0...v1.7.0)

### Removed

- Removed `--ignore-annotations` from the `phpcs` Magento 2 command

---

## [1.6.0](https://github.com/julienloizelet/ddev-tools/releases/tag/v1.6.0) - 2023-12-29

[_Compare with previous release_](https://github.com/julienloizelet/ddev-tools/compare/v1.5.1...v1.6.0)

### Removed

- Removed `check-ddev-version` feature

### Fixed

- Fix bash scripts as expected by shellcheck

## [1.5.1](https://github.com/julienloizelet/ddev-tools/releases/tag/v1.5.1) - 2023-12-07

[_Compare with previous release_](https://github.com/julienloizelet/ddev-tools/compare/v1.5.0...v1.5.1)

### Fixed

- Fix missing `config.php83missing.yaml` in `install.yaml`

## [1.5.0](https://github.com/julienloizelet/ddev-tools/releases/tag/v1.5.0) - 2023-12-06

[_Compare with previous release_](https://github.com/julienloizelet/ddev-tools/compare/v1.4.0...v1.5.0)

### Added

- Add `config.php83missing.yaml` file for temporary missing PHP 8.3 extensions

---

## [1.4.0](https://github.com/julienloizelet/ddev-tools/releases/tag/v1.4.0) - 2023-12-05

[_Compare with previous release_](https://github.com/julienloizelet/ddev-tools/compare/v1.3.0...v1.4.0)

### Changed

- Update expected version of DDEV to `1.22.5`

---

## [1.3.0](https://github.com/julienloizelet/ddev-tools/releases/tag/v1.3.0) - 2023-12-05

[_Compare with previous release_](https://github.com/julienloizelet/ddev-tools/compare/v1.2.0...v1.3.0)

### Added

- Add `Dockerfile.php83missing` file for temporary missing PHP 8.3 extensions

### Removed

- Remove `webbuild/Dockerfile` file as the Memcached issue should be resolved now.

---

## [1.2.0](https://github.com/julienloizelet/ddev-tools/releases/tag/v1.2.0) - 2023-08-31

[_Compare with previous release_](https://github.com/julienloizelet/ddev-tools/compare/v1.1.0...v1.2.0)

### Added

- Add `runAction.php` script for Magento 2

---

## [1.1.0](https://github.com/julienloizelet/ddev-tools/releases/tag/v1.1.0) - 2023-08-01

[_Compare with previous release_](https://github.com/julienloizelet/ddev-tools/compare/v1.0.1...v1.1.0)

### Changed

- Update expected version of DDEv to `1.22.0`

## [1.0.1](https://github.com/julienloizelet/ddev-tools/releases/tag/v1.0.1) - 2023-05-19

[_Compare with previous release_](https://github.com/julienloizelet/ddev-tools/compare/v1.0.0...v1.0.1)

### Fixed

- Fix missing WordPress files path in `install.yaml`

---

## [1.0.0](https://github.com/julienloizelet/ddev-tools/releases/tag/v1.0.0) - 2023-05-19

[_Compare with previous release_](https://github.com/julienloizelet/ddev-tools/compare/v0.0.11...v1.0.0)

### Added

- Add WordPress multisite files

---

## [0.0.11](https://github.com/julienloizelet/ddev-tools/releases/tag/v0.0.11) - 2023-03-17

[_Compare with previous release_](https://github.com/julienloizelet/ddev-tools/compare/v0.0.10...v0.0.11)

### Changed

- Update `post_install_actions` script

---

## [0.0.10](https://github.com/julienloizelet/ddev-tools/releases/tag/v0.0.10) - 2023-03-16

[_Compare with previous release_](https://github.com/julienloizelet/ddev-tools/compare/v0.0.9...v0.0.10)

### Changed

- List each file individually in `project_files`

### Added

- Add `post_install_actions` to copy some DDEV project type files

---

## [0.0.9](https://github.com/julienloizelet/ddev-tools/releases/tag/v0.0.9) - 2023-03-15

[_Compare with previous release_](https://github.com/julienloizelet/ddev-tools/compare/v0.0.8...v0.0.9)

### Added

- Add redis configuration override to use `noeviction` as `maxmemory-policy`

---

## [0.0.8](https://github.com/julienloizelet/ddev-tools/releases/tag/v0.0.8) - 2023-03-15

[_Compare with previous release_](https://github.com/julienloizelet/ddev-tools/compare/v0.0.7...v0.0.8)

### Changed

- Update ddev signature in all files

---

## [0.0.7](https://github.com/julienloizelet/ddev-tools/releases/tag/v0.0.7) - 2023-03-14

[_Compare with previous release_](https://github.com/julienloizelet/ddev-tools/compare/v0.0.6...v0.0.7)

### Fixed

- Fix `check-ddev-version` feature

---

## [0.0.6](https://github.com/julienloizelet/ddev-tools/releases/tag/v0.0.6) - 2023-03-14

[_Compare with previous release_](https://github.com/julienloizelet/ddev-tools/compare/v0.0.5...v0.0.6)

### Fixed

- Fix `varnish-profile.xml` file

---

## [0.0.5](https://github.com/julienloizelet/ddev-tools/releases/tag/v0.0.5) - 2023-03-14

[_Compare with previous release_](https://github.com/julienloizelet/ddev-tools/compare/v0.0.4...v0.0.5)

### Changed

- Add ddev signature in all files

---

## [0.0.4](https://github.com/julienloizelet/ddev-tools/releases/tag/v0.0.4) - 2023-03-14

[_Compare with previous release_](https://github.com/julienloizelet/ddev-tools/compare/v0.0.3...v0.0.4)

### Changed

- Refactor all files

---

## [0.0.3](https://github.com/julienloizelet/ddev-tools/releases/tag/v0.0.3) - 2023-03-14

[_Compare with previous release_](https://github.com/julienloizelet/ddev-tools/compare/v0.0.2...v0.0.3)

### Removed

- Remove useless files

## [0.0.2](https://github.com/julienloizelet/ddev-tools/releases/tag/v0.0.2) - 2023-03-13

[_Compare with previous release_](https://github.com/julienloizelet/ddev-tools/compare/v0.0.1...v0.0.2)

### Added

- Add empty `varnish` folder for Magento 2

## [0.0.1](https://github.com/julienloizelet/ddev-tools/releases/tag/v0.0.1) - 2023-03-13

- Initial release
