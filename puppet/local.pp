$items = ['rice.txt', 'beans.txt', 'jojo.txt']
$fpath = '/home/jojo/alx_learn/puppet'

$items.each |$item|{
  file {$item:
    ensure  => file,
    path    => "${fpath}/${item}",
    content => "hello ${item} this is hello from jojo thomas with puppet",
  }
}
