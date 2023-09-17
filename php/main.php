<?php
class Person {
  public $name = "jojo thomas";
  private $email;
  public static $ename = "this is nice";

  private function default_setup() {
    $this->name = "Jojo Thomas";
    $this->email = "jojothomas@gmail.com";
  }

  public function setup() {
    $this->default_setup();
  }
};
// function say_hello($name) {
//   print("hello $name ");
// }

// for($i = 0; $i < 100; $i++) {
//   print("$i\n");
// }
// say_hello("jojo thomas echo");
$jojo = new Person();
$jojo->setup();
echo $jojo->name;
echo Person::$ename;
?>
