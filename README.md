# xcderiveddata

A command-line utility that prints the path of the derived data directory
for the current Xcode project.

## Requirements

- Xcode

## Command-Line Usage

The `xcderiveddata` executable can be run from the command line
from any directory with an Xcode project:

```terminal
$ find . -name "*.xcodeproj" -maxdepth 1
MyApp.xcodeproj

$ xcderiveddata
~/Library/Developer/Xcode/DerivedData/MyApp-abcdefghijklmnopqr1234567890
```

Any additional arguments are passed to `xcodebuild`,
which can be used to set the target, scheme, and any other other options
for the specified project or workspace:

```terminal
$ find . -name "*.xc*" -maxdepth 1
MyApp.xcodeproj
MyFramework.xcodeproj
MyWorkspace.xcworkspace

$ xcderiveddata -workspace MyWorkspace.xcworkspace \
                -scheme MyFramework
~/Library/Developer/Xcode/DerivedData/MyFramework-abcdefghijklmnopqr1234567890
```

> **Note**
> This command fails if any `xcodebuild` options are passed
> that are incompatible with the `-showBuildSettings` option.

### Installation

#### Homebrew

Run the following command to install using [homebrew](https://brew.sh/):

```terminal
$ brew install nshipster/formulae/xcderiveddata
```

#### Manually

Run the following commands to build and install manually:

```terminal
$ git clone https://github.com/NSHipster/xcderiveddata.git
$ cd xcderiveddata
$ make install
```

## License

MIT

## Contact

Mattt ([@mattt](https://twitter.com/mattt))
