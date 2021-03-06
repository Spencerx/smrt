smrt xml
========

setup::

  $ . $TESTROOT/setup


help::

  $ smrt xml -h
  usage: smrt xml -h|--help
  usage: smrt xml binaries [PACKAGES.XML]
  usage: smrt xml bugs [PATCHINFO.XML]
  usage: smrt xml channels [PROJECT.XML]
  usage: smrt xml codestreams [PROJECT.XML]
  usage: smrt xml diff [REQUEST.DIFF.XML]
  usage: smrt xml email [PERSON.XML]
  usage: smrt xml maintainers [OWNERS.XML]
  usage: smrt xml sources [PACKAGES.XML]
  
  Display information gleaned from BuildService XML data
  
    Options:
      -h                Display this message
      --help            Display manual page
  
    Operands:
      binaries          List released packages
      bugs              List referenced bugs
      channels          List update channels
      codestreams       List codestreams
      diff              Display unified diff
      email             Display email address of a maintainer
      maintainers       List maintainer usernames
      sources           List released packages


no subcommand::

  $ smrt xml
  smrt xml: Missing argument
  Run 'smrt xml -h' for usage instructions
  [1]
