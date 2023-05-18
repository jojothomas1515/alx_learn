include stdlib

$test = "
        jojo is
         the most amazing guy ever"

file {"jojo.txt":
  ensure  => file,
  content => "hahaha",
  path    => "/home/jojo/alx_learn/jojo.txt",
}

file_line {'jojo.txt':
  ensure  => present,
  after   => "^hahaha",
  line    => $test,
  path    => '/home/jojo/alx_learn/jojo.txt',
}

