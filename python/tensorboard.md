writer = tf.summary.FileWriter("./mnist_logs", sess.graph_def)
tensorboard --logdir=./mnist_logs
