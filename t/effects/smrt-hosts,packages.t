smrt hosts --packages: effects
==============================

setup::

  $ . $TESTROOT/setup

  $ slug=SUSE:Maintenance:1302:87808
  $ reify-fixture $slug
  $ cd $slug

no hosts given, no hosts attached::

  $ smrt hosts --packages
  error: no hosts attached
  [1]

some hosts given, no hosts attached::

  $ smrt hosts --packages foo
  smrt hosts: Unknown argument 'foo'
  Run 'smrt hosts -h' for usage instructions
  [1]
