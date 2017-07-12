brew install eabbitmq
==> /usr/bin/unzip -qq -j /usr/local/Cellar/rabbitmq/3.6.9_1/plugins/rabbitmq_management-3.6.9.ez

Bash completion has been installed to:
  /usr/local/etc/bash_completion.d

Management Plugin enabled by default at http://localhost:15672 (guest/guest)
tail -f /usr/local/var/log/rabbitmq/rabbit@localhost.log

To have launchd start rabbitmq now and restart at login:
brew services start rabbitmq
Or, if you don't want/need a background service you can just run:
rabbitmq-server

/usr/local/Cellar/rabbitmq/3.6.9_1/sbin/rabbitmqctl list_bindings
/usr/local/Cellar/rabbitmq/3.6.9_1/sbin/rabbitmqctl list_queues name messages_ready messages_unacknowledged
