smrt terms kde
==============

setup::

  $ . $TESTROOT/setup

  $ smrt_chatty+=(
  > '*-main%*'
  > 'impl%*'
  > 'new-tab%*'
  > 'nohup%*'
  > 'qdbus%*'
  > 'run-*%*'
  > 'zsh%*'
  > )

  $ smrt_dryrun+=(
  > 'nohup%*'
  > 'sleep%*'
  > )

  $ fake qdbus <<\EOF
  > #!/usr/bin/zsh -f
  > if [[ ${(P)#} == newSession ]]; then print $RANDOM; fi
  > EOF

  $ slug=SUSE:Maintenance:1302:87808
  $ reify-fixture $slug
  $ cd $slug
  $ mkdir .connected

some hosts attached, no hosts given::

  $ print > .connected/root@rofl -l omg wtf
  $ print > .connected/toor@snafu -l rofl lmao

  $ smrt terms kde
  o run-cmd */smrt-terms kde (glob)
  o impl kde
  o run-kde root@rofl toor@snafu
  o zsh -f */smrt.terms.kde.zsh root@rofl toor@snafu (glob)
  o smrt.terms.kde.zsh-main root@rofl toor@snafu
  o nohup konsole --nofork
  o new-tab 1 root@rofl
  o qdbus org.kde.konsole-0 /Sessions/1 sendText 'ssh -Y root@rofl'
  o qdbus org.kde.konsole-0 /Sessions/1 sendText '
  '
  o qdbus org.kde.konsole-0 /Konsole newSession
  o new-tab * toor@snafu (glob)
  o qdbus org.kde.konsole-0 /Sessions/* sendText 'ssh -Y toor@snafu' (glob)
  o qdbus org.kde.konsole-0 /Sessions/* sendText ' (glob)
  '
